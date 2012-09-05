.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    const/16 v6, 0xc8

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 304
    if-ne p2, v6, :cond_4b

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, city:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    .line 308
    .local v3, parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeatherLocation(Lorg/xml/sax/InputSource;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_4a

    .line 312
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 313
    .local v2, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v1, data:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$latitude:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$longitude:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 317
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 319
    const-string v4, "cityinfo"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    iput v6, v2, Landroid/os/Message;->what:I

    .line 322
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 324
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$locationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    .end local v0           #city:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    :goto_49
    return-void

    .line 329
    .restart local v0       #city:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v3       #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    :cond_4a
    const/4 p2, -0x1

    .line 333
    .end local v0           #city:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v3           #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    :cond_4b
    if-eq p2, v6, :cond_56

    .line 335
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$locationHandler:Landroid/os/Handler;

    const/16 v5, 0x3f2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    :cond_56
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->stopHttpThread()V

    goto :goto_49
.end method
