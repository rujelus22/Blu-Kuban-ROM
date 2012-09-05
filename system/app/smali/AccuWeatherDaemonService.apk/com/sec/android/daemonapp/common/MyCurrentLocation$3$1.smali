.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;
.super Lcom/sec/android/daemonapp/http/HttpResponseHandler;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;

    invoke-direct {p0}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    const/16 v8, 0xc8

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 365
    if-ne p2, v8, :cond_6e

    .line 368
    new-instance v4, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    invoke-direct {v4}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;-><init>()V

    .line 369
    .local v4, parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    const/4 v1, 0x0

    .line 370
    .local v1, detailinfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    invoke-static {}, Lcom/sec/android/daemonapp/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, updateDate:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;

    iget v6, v6, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$tempScale:I

    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->parseDetailWeather(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_6e

    .line 379
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 380
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, data:Landroid/os/Bundle;
    const-string v6, "cityinfo"

    iget-object v7, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;

    iget-object v7, v7, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$cityInfo:Lcom/sec/android/daemonapp/info/CityInfo;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    const-string v6, "detailinfo"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 383
    const-string v6, "today"

    invoke-virtual {v1}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/daemonapp/info/TodayWeatherInfo;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 385
    const-string v6, "cityxmlinfo"

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    iput v8, v3, Landroid/os/Message;->what:I

    .line 388
    const/4 v2, 0x0

    .local v2, i:I
    :goto_53
    invoke-virtual {v1}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->getForcastSize()I

    move-result v6

    if-ge v2, v6, :cond_67

    .line 390
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 403
    :cond_67
    iget-object v6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;

    iget-object v6, v6, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$locationHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #detailinfo:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    .end local v2           #i:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    .end local v5           #updateDate:Ljava/lang/String;
    :cond_6e
    return-void
.end method
