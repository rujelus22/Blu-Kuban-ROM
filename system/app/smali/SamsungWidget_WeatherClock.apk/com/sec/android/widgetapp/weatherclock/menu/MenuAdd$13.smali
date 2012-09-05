.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

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
    .line 669
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v0, v0, p5

    if-eqz v0, :cond_12

    .line 779
    :cond_11
    :goto_11
    return-void

    .line 674
    :cond_12
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_179

    .line 678
    :try_start_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 679
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1@Ct.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_3c
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I

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

    .line 684
    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    monitor-enter v1
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_60} :catch_6d

    .line 686
    :try_start_60
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v2, v2, p5

    if-eqz v2, :cond_7e

    .line 687
    monitor-exit v1

    goto :goto_11

    .line 695
    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 747
    :catch_6d
    move-exception v0

    .line 749
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 778
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->deleteMe(I)V

    goto :goto_11

    .line 690
    :cond_7e
    if-eqz v0, :cond_98

    .line 691
    :try_start_80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 692
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 695
    :cond_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_80 .. :try_end_99} :catchall_6a

    .line 696
    :try_start_99
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapWthr.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_78

    .line 700
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2@Ct.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_78

    .line 704
    const/4 v0, 0x0

    move v2, v0

    :goto_f3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_147

    .line 706
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 707
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 708
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 709
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_117
    :goto_117
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_143

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 711
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 713
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getZoomlevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 714
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setState(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_117

    .line 704
    :cond_143
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f3

    .line 720
    :cond_147
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapWthr.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ct"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_177
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_177} :catch_6d

    goto/16 :goto_78

    .line 765
    :cond_179
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_78
.end method
