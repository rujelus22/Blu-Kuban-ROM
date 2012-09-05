.class Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserHandlerSingle"
.end annotation


# instance fields
.field private alldayurl:Ljava/lang/String;

.field private cal:Ljava/util/Calendar;

.field private currenttemp:Ljava/lang/StringBuffer;

.field private currentweathericon:Ljava/lang/StringBuffer;

.field private dayurl:Ljava/lang/StringBuffer;

.field private first:Z

.field private forecasthightemp:Ljava/lang/StringBuffer;

.field private forecastlowtemp:Ljava/lang/StringBuffer;

.field private forecastweathericon:Ljava/lang/StringBuffer;

.field private hasAllUrl:Z

.field private hasCurrent:Z

.field private hasDay:Z

.field private hasDayTime:Z

.field private hasForeCast:Z

.field private hasHightemp:Z

.field private hasLocal:Z

.field private hasLowtemp:Z

.field private hasRealFeel:Z

.field private hasSpeed:Z

.field private hasTemperture:Z

.field private hasTimeZone:Z

.field private hasUrl:Z

.field private hasWeatherIcon:Z

.field private hasWeathertext:Z

.field private hasWindDirection:Z

.field private hasWindSpeed:Z

.field private iconNum:I

.field private nowTemp:F

.field private real:F

.field private realfeel:Ljava/lang/StringBuffer;

.field private speed:Ljava/lang/StringBuffer;

.field private sunit:Ljava/lang/String;

.field private tagnames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempScale:I

.field final synthetic this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

.field private timezone:Ljava/lang/StringBuffer;

.field private todayurl:Ljava/lang/String;

.field private tz:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;

.field private url:Ljava/lang/StringBuffer;

.field private wdirect:Ljava/lang/String;

.field private weathertext:Ljava/lang/StringBuffer;

.field private winddirection:Ljava/lang/StringBuffer;

.field private windspeed:Ljava/lang/StringBuffer;

.field private wspeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "tempScale"
    .parameter "updateDate"

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->speed:Ljava/lang/StringBuffer;

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->realfeel:Ljava/lang/StringBuffer;

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->windspeed:Ljava/lang/StringBuffer;

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->winddirection:Ljava/lang/StringBuffer;

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasSpeed:Z

    .line 49
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    .line 56
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasRealFeel:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindSpeed:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindDirection:Z

    .line 62
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    .line 63
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    .line 67
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    .line 80
    iput p2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    .line 81
    iput-object p3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "timeZone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "currentconditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathertext"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathericon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "forecast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "daytime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "hightemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lowtemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "speed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "realfeel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "windspeed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "winddirection"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasSpeed:Z

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->speed:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 262
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    if-eqz v0, :cond_17

    .line 264
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    if-eqz v0, :cond_16

    .line 265
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 310
    :cond_16
    :goto_16
    return-void

    .line 267
    :cond_17
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    if-eqz v0, :cond_61

    .line 269
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    if-eqz v0, :cond_25

    .line 270
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 271
    :cond_25
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    if-eqz v0, :cond_2f

    .line 272
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 273
    :cond_2f
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_39

    .line 274
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 275
    :cond_39
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    if-eqz v0, :cond_43

    .line 277
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 279
    :cond_43
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasRealFeel:Z

    if-eqz v0, :cond_4d

    .line 281
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->realfeel:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 283
    :cond_4d
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindSpeed:Z

    if-eqz v0, :cond_57

    .line 285
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->windspeed:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 287
    :cond_57
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindDirection:Z

    if-eqz v0, :cond_16

    .line 289
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->winddirection:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 292
    :cond_61
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    if-eqz v0, :cond_16

    .line 294
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    if-eqz v0, :cond_72

    .line 295
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    if-eqz v0, :cond_72

    .line 296
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 299
    :cond_72
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    if-eqz v0, :cond_16

    .line 301
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_80

    .line 302
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 303
    :cond_80
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    if-eqz v0, :cond_8a

    .line 304
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 305
    :cond_8a
    iget-boolean v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    if-eqz v0, :cond_16

    .line 306
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_19c

    .line 254
    :goto_a
    return-void

    .line 164
    :pswitch_b
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto :goto_a

    .line 168
    :pswitch_e
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    .line 172
    :goto_3c
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    .line 173
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    .line 178
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto :goto_a

    .line 171
    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    goto :goto_3c

    .line 182
    :pswitch_74
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    .line 183
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    .line 184
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->realfeel:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->real:F

    .line 186
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->windspeed:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->wspeed:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->winddirection:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->wdirect:Ljava/lang/String;

    .line 188
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto/16 :goto_a

    .line 191
    :pswitch_b4
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto/16 :goto_a

    .line 192
    :pswitch_b8
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto/16 :goto_a

    .line 193
    :pswitch_bc
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto/16 :goto_a

    .line 195
    :pswitch_c0
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto/16 :goto_a

    .line 199
    :pswitch_c4
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto/16 :goto_a

    .line 203
    :pswitch_c8
    iget-boolean v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    if-eqz v3, :cond_13f

    .line 205
    new-instance v0, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    iget v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 211
    .local v0, today:Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    new-instance v1, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;

    iget v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;-><init>(ILcom/sec/android/daemonapp/info/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v1, todayInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->sunit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setSpeedUnit(Ljava/lang/String;)V

    .line 214
    iget v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->real:F

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setRealFeel(F)V

    .line 215
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->wspeed:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setWindSpeed(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->wdirect:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setWindDirection(Ljava/lang/String;)V

    .line 218
    iget v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setIconNum(I)V

    .line 219
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    invoke-virtual {v3, v1}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/daemonapp/info/TodayWeatherInfo;)V

    .line 222
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 234
    .end local v0           #today:Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    .end local v1           #todayInfo:Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
    :goto_13b
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_a

    .line 226
    :cond_13f
    new-instance v2, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    iget v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 232
    .local v2, adayinfo:Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    invoke-virtual {v3, v2}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;)V

    goto :goto_13b

    .line 237
    .end local v2           #adayinfo:Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    :pswitch_16e
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_a

    .line 238
    :pswitch_172
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_a

    .line 240
    :pswitch_176
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    .line 241
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 242
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_a

    .line 245
    :pswitch_184
    iget-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->speed:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->sunit:Ljava/lang/String;

    .line 246
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasSpeed:Z

    goto/16 :goto_a

    .line 248
    :pswitch_190
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasRealFeel:Z

    goto/16 :goto_a

    .line 250
    :pswitch_194
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindSpeed:Z

    goto/16 :goto_a

    .line 252
    :pswitch_198
    iput-boolean v8, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindDirection:Z

    goto/16 :goto_a

    .line 161
    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_74
        :pswitch_b4
        :pswitch_b8
        :pswitch_bc
        :pswitch_c0
        :pswitch_c4
        :pswitch_c8
        :pswitch_16e
        :pswitch_172
        :pswitch_176
        :pswitch_184
        :pswitch_190
        :pswitch_194
        :pswitch_198
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_fe

    .line 156
    :goto_b
    return-void

    .line 107
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 108
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 109
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 110
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 111
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 115
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->speed:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->speed:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 116
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->realfeel:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->realfeel:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 117
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->windspeed:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->windspeed:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 118
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->winddirection:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->winddirection:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    new-instance v1, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    invoke-direct {v1}, Lcom/sec/android/daemonapp/info/DetailWeatherInfo;-><init>()V

    iput-object v1, v0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto/16 :goto_b

    .line 124
    :pswitch_92
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto/16 :goto_b

    .line 125
    :pswitch_96
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto/16 :goto_b

    .line 126
    :pswitch_9a
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto/16 :goto_b

    .line 127
    :pswitch_9e
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto/16 :goto_b

    .line 128
    :pswitch_a2
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto/16 :goto_b

    .line 130
    :pswitch_a6
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto/16 :goto_b

    .line 135
    :pswitch_ac
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto/16 :goto_b

    .line 137
    :pswitch_b0
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 138
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 139
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 140
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_b

    .line 145
    :pswitch_e0
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_b

    .line 146
    :pswitch_e4
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_b

    .line 148
    :pswitch_e8
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_b

    .line 151
    :pswitch_ee
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasSpeed:Z

    goto/16 :goto_b

    .line 152
    :pswitch_f2
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasRealFeel:Z

    goto/16 :goto_b

    .line 153
    :pswitch_f6
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindSpeed:Z

    goto/16 :goto_b

    .line 154
    :pswitch_fa
    iput-boolean v2, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;->hasWindDirection:Z

    goto/16 :goto_b

    .line 104
    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_c
        :pswitch_92
        :pswitch_96
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
        :pswitch_a6
        :pswitch_ac
        :pswitch_b0
        :pswitch_e0
        :pswitch_e4
        :pswitch_e8
        :pswitch_ee
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
    .end packed-switch
.end method
