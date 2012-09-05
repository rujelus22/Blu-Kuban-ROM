.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performGetData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

.field final synthetic val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

.field final synthetic val$tempScaleSetting:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;ILcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iput p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$tempScaleSetting:I

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0xf22f

    const/16 v6, 0xc8

    .line 1597
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1659
    :goto_10
    return-void

    .line 1601
    :cond_11
    if-ne p2, v6, :cond_110

    .line 1603
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseALocation(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    move-result-object v1

    .line 1605
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$tempScaleSetting:I

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v2

    .line 1606
    const/4 v0, 0x0

    .line 1607
    if-eqz v2, :cond_54

    .line 1608
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 1610
    :cond_54
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;-><init>()V

    .line 1611
    if-eqz v0, :cond_a7

    .line 1612
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setCurrentTemp(F)V

    .line 1613
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setHighTemp(F)V

    .line 1615
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setIconNum(I)V

    .line 1616
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setLowTemp(F)V

    .line 1617
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setTempScale(I)V

    .line 1618
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1621
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 1624
    :cond_a7
    if-eqz v1, :cond_c1

    .line 1625
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setZoomlevel(I)V

    .line 1630
    :cond_c1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const-class v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1631
    const-string v0, "todayInfo"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1632
    const-string v0, "cityInfo"

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    if-eqz v2, :cond_ee

    .line 1636
    const/4 v0, 0x0

    :goto_de
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForcastSize()I

    move-result v4

    if-ge v0, v4, :cond_ee

    .line 1637
    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 1641
    :cond_ee
    const-string v0, "forcastList"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1642
    const-string v0, "flags"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1643
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1645
    const-string v0, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1646
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1650
    :cond_110
    if-eq p2, v6, :cond_127

    .line 1652
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 1655
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1658
    :cond_127
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->deleteMe(I)V

    goto/16 :goto_10
.end method
