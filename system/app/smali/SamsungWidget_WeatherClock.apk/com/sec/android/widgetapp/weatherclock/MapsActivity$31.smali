.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;
.super Landroid/os/Handler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field resultArrived:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->resultArrived:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const v4, 0x7f09001d

    const v6, -0x9bdc

    const v3, -0x140b4

    .line 1592
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x13d30

    if-ne v0, v1, :cond_20

    .line 1594
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    .line 1596
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1676
    :cond_1f
    :goto_1f
    return-void

    .line 1599
    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_33

    .line 1601
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->resultArrived:Z

    if-nez v0, :cond_1f

    .line 1603
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1604
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_1f

    .line 1609
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->resultArrived:Z

    .line 1610
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_BODY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1612
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1c5

    .line 1614
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v1

    .line 1615
    if-eqz v1, :cond_1f

    .line 1617
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const-class v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1618
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 1619
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;-><init>()V

    .line 1620
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setCurrentTemp(F)V

    .line 1621
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setHighTemp(F)V

    .line 1623
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setIconNum(I)V

    .line 1624
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setLowTemp(F)V

    .line 1625
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setTempScale(I)V

    .line 1626
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1629
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 1630
    const-string v0, "todayInfo"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1631
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 1632
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 1633
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 1634
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1635
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1636
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getProvider()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 1637
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 1638
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setZoomlevel(I)V

    .line 1639
    const-string v3, "cityInfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1640
    const-string v0, "flags"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1641
    const-string v0, "appWidgetId"

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mAppWidgetId:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    const/4 v0, 0x0

    :goto_148
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForcastSize()I

    move-result v4

    if-ge v0, v4, :cond_158

    .line 1645
    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v4

    .line 1646
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    .line 1648
    :cond_158
    const-string v0, "forcastList"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 1652
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string v1, "mapinfo"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1655
    const-string v0, "mapweather"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1656
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->latitude:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1657
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->longitude:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1658
    const-string v0, "pre_lat"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-wide v3, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lat:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1659
    const-string v0, "pre_lon"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-wide v3, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lon:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1660
    const-string v0, "tempscale"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1661
    const-string v0, "launcher"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->launcher:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v2, v6}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1f

    .line 1671
    :cond_1c5
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1672
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto/16 :goto_1f
.end method
