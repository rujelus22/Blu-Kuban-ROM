.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setWebLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1851
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v1

    .line 1853
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {v4, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1855
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mapinfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1857
    if-nez v0, :cond_a1

    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;-><init>()V

    .line 1861
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setCity(Ljava/lang/String;)V

    .line 1862
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setIcon(Ljava/lang/String;)V

    .line 1863
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1864
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLocation(Ljava/lang/String;)V

    .line 1865
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1866
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setProvider(I)V

    .line 1867
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setState(Ljava/lang/String;)V

    .line 1868
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getCurrentTemp()F

    move-result v6

    invoke-static {v5, v1, v6, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setTemp(Ljava/lang/String;)V

    .line 1870
    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 1871
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1875
    :cond_a1
    const/4 v1, 0x0

    .line 1878
    :try_start_a2
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mDecryptKey:Ljava/security/Key;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v5, v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->toHexString([B)Ljava/lang/String;
    :try_end_b9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a2 .. :try_end_b9} :catch_187

    move-result-object v1

    .line 1887
    :goto_ba
    :try_start_ba
    new-instance v5, Ljava/io/FileInputStream;

    const-string v2, "/mnt/sdcard/widgetgetlog.txt"

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1888
    const-string v2, ""

    const-string v6, "LF_success!!!"

    invoke-static {v2, v6}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/4 v2, 0x1

    .line 1890
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_cc} :catch_191

    .line 1898
    :goto_cc
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    if-eqz v2, :cond_1ad

    .line 1901
    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C.L - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string v1, ""

    const-string v2, "!!file is exisist"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_105
    const-string v1, "mapweather"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1910
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1911
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1912
    const-string v0, "pre_lat"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1913
    const-string v0, "pre_lon"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1914
    const-string v0, "tempscale"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1915
    const-string v0, "launcher"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1916
    const-string v0, "flags"

    const v1, -0xcf6c

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1917
    const-string v0, "appWidgetId"

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1918
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivity(Landroid/content/Intent;)V

    .line 1919
    return-void

    .line 1879
    :catch_187
    move-exception v2

    .line 1880
    const-string v2, ""

    const-string v5, "InvalidAlgorithmParameterException"

    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 1892
    :catch_191
    move-exception v2

    .line 1894
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1895
    goto/16 :goto_cc

    .line 1906
    :cond_1ad
    const-string v1, ""

    const-string v2, "file is not found!!"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_105
.end method
