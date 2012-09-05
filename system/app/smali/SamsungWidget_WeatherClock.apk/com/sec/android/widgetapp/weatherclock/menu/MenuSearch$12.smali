.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-wide v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->syncstamp:J

    cmp-long v0, v0, p5

    if-eqz v0, :cond_12

    .line 667
    :cond_11
    :goto_11
    return-void

    .line 563
    :cond_12
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_13b

    .line 567
    :try_start_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 568
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a result arrived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_3c
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather_LocCities(ILjava/lang/String;Lorg/xml/sax/InputSource;)Ljava/util/ArrayList;

    move-result-object v0

    .line 574
    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    monitor-enter v1
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_60} :catch_7d

    .line 576
    if-eqz v0, :cond_8e

    .line 577
    :try_start_62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 578
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 580
    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v0
    :try_end_7d
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_7d} :catch_7d

    .line 634
    :catch_7d
    move-exception v0

    .line 636
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 666
    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->deleteMe(I)V

    goto :goto_11

    .line 580
    :cond_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_7a

    .line 582
    :try_start_8f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_c7

    .line 583
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "menusearch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_c7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9b

    if-lt v0, v1, :cond_88

    .line 588
    const/4 v0, 0x0

    move v2, v0

    :goto_d5
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_12f

    .line 590
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 591
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 592
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 594
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    if-eqz v1, :cond_12b

    .line 595
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ff
    :goto_ff
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 597
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 599
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getZoomlevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 600
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setState(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    .line 588
    :cond_12b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d5

    .line 608
    :cond_12f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_139
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_139} :catch_7d

    goto/16 :goto_88

    .line 652
    :cond_13b
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_88
.end method
