.class public Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;
.super Ljava/lang/Object;
.source "AccuWeatherUrlManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field lang:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HKUTF"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SIMUTF"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TAIUTF"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "es-ar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LATIN SPANISH"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pt-br"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "en-gb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fr-ca"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "he"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->lang:[Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public makeDetailViewUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 8
    .parameter "lang"
    .parameter "location"
    .parameter "index"

    .prologue
    .line 94
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com/m/details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".aspx?p=samand&lang=%s&loc=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public makeHeader()Lorg/apache/http/message/HeaderGroup;
    .registers 5

    .prologue
    .line 35
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 36
    .local v0, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "User-Agent"

    const-string v3, "SAMSUNG-Android"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 37
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "*,*/*"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 38
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "text/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 40
    return-object v0
.end method

.method public makeMoreViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "lang"
    .parameter "location"

    .prologue
    .line 185
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/current.aspx?p=samand&lang=%s&loc=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public makeQuickViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "lang"
    .parameter "location"

    .prologue
    .line 78
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/Quick-Look.aspx?p=samand&lang=%s&loc=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public makeUrlForGetCityList(Ljava/lang/String;)Ljava/net/URL;
    .registers 10
    .parameter "city"

    .prologue
    .line 128
    const/4 v7, 0x0

    .line 131
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/widget/samsungmobile/city-find.asp?returnGeoPosition=1&location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_24} :catch_25

    .line 138
    .end local v7           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_24
    return-object v0

    .line 134
    .end local v0           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_25
    move-exception v6

    .line 136
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_24
.end method

.method public makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;
    .registers 13
    .parameter "location"
    .parameter "tempScale"

    .prologue
    .line 171
    const/4 v7, 0x0

    .line 174
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    const-string v4, "/widget/samsungmobile/weather-data.asp?metric=%d&location=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_24} :catch_25

    .line 181
    .end local v7           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_24
    return-object v0

    .line 177
    .end local v0           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_25
    move-exception v6

    .line 179
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_24
.end method

.method public makeUrlForGetMultiData(Ljava/lang/String;I)Ljava/net/URL;
    .registers 13
    .parameter "location"
    .parameter "tempScale"

    .prologue
    .line 156
    const/4 v7, 0x0

    .line 159
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    const-string v4, "/widget/samsungmobile/briefing_weather.asp?metric=%d&location=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_24} :catch_25

    .line 166
    .end local v7           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_24
    return-object v0

    .line 162
    .end local v0           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_25
    move-exception v6

    .line 164
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_24
.end method

.method public makeUrlForLocGetData(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 12
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 104
    const/4 v7, 0x0

    .line 107
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    const-string v4, "/widget/samsungmobile/city-find.asp?returnGeoPosition=1&latitude=%s&longitude=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    aput-object p2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_24} :catch_4a

    .line 119
    .end local v7           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_24
    if-eqz v0, :cond_49

    .line 120
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCL URL>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, ""

    const-string v2, "MCL have URL!!"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_49
    return-object v0

    .line 115
    .end local v0           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_4a
    move-exception v6

    .line 117
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_24
.end method
