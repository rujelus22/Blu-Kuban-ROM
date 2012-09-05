.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performGetData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

.field final synthetic val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$tempScaleSetting:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;ILcom/sec/android/widgetapp/weatherclock/model/CityInfo;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iput p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$tempScaleSetting:I

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 18
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"
    .parameter "stamp"

    .prologue
    .line 1797
    invoke-super/range {p0 .. p6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1799
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v7, v7, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v7, v7, p5

    if-eqz v7, :cond_14

    .line 2015
    :cond_13
    :goto_13
    return-void

    .line 1801
    :cond_14
    const/16 v7, 0xc8

    if-ne p2, v7, :cond_213

    .line 1803
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1804
    .local v6, updateDate:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v7

    new-instance v8, Lorg/xml/sax/InputSource;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v7, v8, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseALocation(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    move-result-object v1

    .line 1805
    .local v1, info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$tempScaleSetting:I

    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v7, v8, v9, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v0

    .line 1807
    .local v0, detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    if-eqz v1, :cond_5e

    .line 1808
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1809
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1812
    :cond_5e
    if-eqz v0, :cond_1ec

    .line 1814
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v7, v7, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v7, v7, p5

    if-nez v7, :cond_13

    .line 1816
    const/4 v3, 0x1

    .line 1818
    .local v3, result:I
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    .line 1819
    .local v5, todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$tempScaleSetting:I

    invoke-virtual {v5, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTempScale(I)V

    .line 1822
    const/4 v2, 0x0

    .line 1823
    .local v2, isMainDefault:Z
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainDefaultLocation()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_88

    .line 1825
    const/4 v2, 0x1

    .line 1828
    :cond_88
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 1830
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$1;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1840
    :cond_a4
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d8

    .line 1842
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v7, v8, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertCity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Z)I

    move-result v3

    .line 1843
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I
    invoke-static {v7, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I

    move-result v4

    .line 1844
    .local v4, resultCode:I
    const/16 v7, 0x3e7

    if-ne v7, v4, :cond_d8

    .line 1846
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$2;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1859
    .end local v4           #resultCode:I
    :cond_d8
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisterdToMainInfo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 1861
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v3

    .line 1862
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I
    invoke-static {v7, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I

    move-result v4

    .line 1863
    .restart local v4       #resultCode:I
    const/16 v7, 0x3e7

    if-ne v7, v4, :cond_132

    .line 1865
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$3;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1878
    .end local v4           #resultCode:I
    :cond_10c
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v3

    .line 1879
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I
    invoke-static {v7, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I

    move-result v4

    .line 1880
    .restart local v4       #resultCode:I
    const/16 v7, 0x3e7

    if-ne v7, v4, :cond_132

    .line 1882
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$4;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1895
    :cond_132
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToDetailInfo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 1897
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v3

    .line 1898
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I
    invoke-static {v7, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I

    move-result v4

    .line 1899
    const/16 v7, 0x3e7

    if-ne v7, v4, :cond_18c

    .line 1901
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$5;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1914
    :cond_166
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v3

    .line 1915
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I
    invoke-static {v7, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I

    move-result v4

    .line 1916
    const/16 v7, 0x3e7

    if-ne v7, v4, :cond_18c

    .line 1918
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$6;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 1930
    :cond_18c
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultCity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1931
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDefaultLocation(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1932
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sLastCt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->val$location:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1937
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2014
    .end local v0           #detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v2           #isMainDefault:Z
    .end local v3           #result:I
    .end local v4           #resultCode:I
    .end local v5           #todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    .end local v6           #updateDate:Ljava/lang/String;
    :cond_1e5
    :goto_1e5
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->deleteMe(I)V

    goto/16 :goto_13

    .line 1981
    .restart local v0       #detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v6       #updateDate:Ljava/lang/String;
    :cond_1ec
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v7

    if-eqz v7, :cond_1e5

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v7

    if-nez v7, :cond_1e5

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v7, v7, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v7, v7, p5

    if-nez v7, :cond_1e5

    .line 1983
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$8;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e5

    .line 1999
    .end local v0           #detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v6           #updateDate:Ljava/lang/String;
    :cond_213
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v7

    if-eqz v7, :cond_1e5

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v7

    if-nez v7, :cond_1e5

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-wide v7, v7, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    cmp-long v7, v7, p5

    if-nez v7, :cond_1e5

    .line 2001
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e5
.end method
