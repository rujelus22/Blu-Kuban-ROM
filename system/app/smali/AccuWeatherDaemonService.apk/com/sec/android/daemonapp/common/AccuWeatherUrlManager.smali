.class public Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;
.super Ljava/lang/Object;
.source "AccuWeatherUrlManager.java"


# static fields
.field static final PORT:I = 0x50

.field static final PROTOCOL:Ljava/lang/String; = "http"

.field static final PROVIDER_HOME_URL:Ljava/lang/String; = "http://www.accuweather.com"

.field static final garbage:Ljava/lang/String; = "&"

.field static final new_BASE_URL:Ljava/lang/String; = "samsungmobile.accu-weather.com"

.field static final new_FILE_GET_DATA_LOCATION:Ljava/lang/String; = "/widget/samsungmobile/city-find.asp?returnGeoPosition=1&latitude=%s&longitude=%s"

.field static final new_FILE_GET_DATA_MULTI:Ljava/lang/String; = "/widget/samsungmobile/briefing_weather.asp?metric=%d&location=%s"

.field static final new_FILE_GET_DATA_SINGLE:Ljava/lang/String; = "/widget/samsungmobile/weather-data.asp?metric=%d&location=%s"


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

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->lang:[Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getHomeUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 74
    const-string v0, "http://www.accuweather.com/?p=samand"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLangCode(Ljava/lang/String;)I
    .registers 5
    .parameter "code"

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->lang:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 67
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->lang:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 70
    .end local v0           #i:I
    :goto_18
    return v0

    .line 65
    .restart local v0       #i:I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public makeDetailViewUri(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 7
    .parameter "location"
    .parameter "index"

    .prologue
    .line 94
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com/m/details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".aspx?p=samand&loc=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

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

.method public makeForecastUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "lang"
    .parameter "location"

    .prologue
    .line 200
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/forecast.aspx?p=samand&lang=%s&loc=%s"

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

.method public makeHourViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "lang"
    .parameter "location"

    .prologue
    .line 190
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/hourly.aspx?p=samand&lang=%s&loc=%s"

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

.method public makeLangId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "pre"

    .prologue
    .line 45
    move-object v2, p1

    .line 46
    .local v2, post:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, lang:Ljava/lang/String;
    if-eqz v1, :cond_39

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 49
    invoke-virtual {p0, v1}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->getLangCode(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, code:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&langid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .end local v0           #code:I
    :cond_39
    return-object v2
.end method

.method public makeMainUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

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

.method public makeMainUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "location"

    .prologue
    .line 84
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/Quick-Look.aspx?p=samand&cityId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

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

.method public makeRadarSatViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "lang"
    .parameter "location"

    .prologue
    .line 195
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.accuweather.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/radar.aspx?p=samand&lang=%s&loc=%s"

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

.method public makeUrlForGetData(Ljava/lang/String;I)Ljava/net/URL;
    .registers 14
    .parameter "location"
    .parameter "tempScale"

    .prologue
    .line 142
    const/4 v8, 0x0

    .line 144
    .local v8, url:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, timestamp:Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    const-string v4, "/widget/samsungmobile/weather-data.asp?metric=%d&location=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x1

    aput-object p1, v5, v9

    const/4 v9, 0x2

    aput-object v7, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_42
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_42} :catch_43

    .line 151
    .end local v7           #timestamp:Ljava/lang/String;
    .end local v8           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_42
    return-object v0

    .line 148
    .end local v0           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_43
    move-exception v6

    .line 149
    .local v6, e:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_42
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

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, ""

    const-string v2, "MCL have URL!!"

    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

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
