.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;
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
    .line 1680
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->resultArrived:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const v5, -0x140b4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x3e7

    .line 1685
    iget v0, p1, Landroid/os/Message;->what:I

    const v4, -0x13d30

    if-ne v0, v4, :cond_1f

    .line 1687
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAddHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    .line 1689
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAddHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1853
    :cond_1e
    :goto_1e
    return-void

    .line 1692
    :cond_1f
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_35

    .line 1694
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->resultArrived:Z

    if-nez v0, :cond_1e

    .line 1696
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1697
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_1e

    .line 1702
    :cond_35
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->resultArrived:Z

    .line 1703
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "RESPONSE_BODY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "RESPONSE_CODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1706
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_28f

    .line 1708
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v5, v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v4

    .line 1709
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1711
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 1712
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getProvider()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 1717
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setZoomlevel(I)V

    .line 1720
    if-eqz v4, :cond_2a1

    .line 1721
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 1723
    :goto_d9
    if-eqz v0, :cond_e2

    .line 1724
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v7, v7, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-virtual {v0, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTempScale(I)V

    .line 1729
    :cond_e2
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainDefaultLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29e

    move v0, v1

    .line 1734
    :goto_ef
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1736
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1740
    :cond_102
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12c

    .line 1742
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertCity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Z)I

    move-result v0

    .line 1743
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I
    invoke-static {v7, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    move-result v0

    .line 1744
    if-ne v9, v0, :cond_12c

    .line 1746
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1747
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1753
    :cond_12c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisterdToMainInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_158

    if-eqz v4, :cond_158

    .line 1755
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 1756
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I
    invoke-static {v7, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    move-result v7

    .line 1757
    if-ne v9, v7, :cond_176

    .line 1759
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1760
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1766
    :cond_158
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 1767
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I
    invoke-static {v7, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    move-result v7

    .line 1768
    if-ne v9, v7, :cond_176

    .line 1770
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1771
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1777
    :cond_176
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToDetailInfo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    .line 1780
    if-eqz v4, :cond_18e

    .line 1782
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 1784
    :cond_18e
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I
    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    move-result v0

    .line 1785
    if-ne v9, v0, :cond_1c2

    .line 1787
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1788
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1794
    :cond_1a2
    if-eqz v4, :cond_1ae

    .line 1795
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 1797
    :cond_1ae
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I
    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I

    move-result v0

    .line 1798
    if-ne v9, v0, :cond_1c2

    .line 1800
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1801
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1806
    :cond_1c2
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultCity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1807
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultLocation(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1808
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sLastCt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1812
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1813
    const-string v3, "appWidgetId"

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mAppWidgetId:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1816
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1818
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_253

    .line 1820
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_1e

    .line 1830
    :cond_253
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "flags"

    const/16 v3, -0x3e7

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x59d7

    if-ne v0, v2, :cond_283

    .line 1832
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1833
    const-string v1, "flags"

    const/16 v2, 0x658f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 1835
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/16 v2, 0x658f

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1e

    .line 1839
    :cond_283
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2702(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 1840
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_1e

    .line 1848
    :cond_28f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1849
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto/16 :goto_1e

    :cond_29e
    move v0, v2

    goto/16 :goto_ef

    :cond_2a1
    move-object v0, v3

    goto/16 :goto_d9
.end method
