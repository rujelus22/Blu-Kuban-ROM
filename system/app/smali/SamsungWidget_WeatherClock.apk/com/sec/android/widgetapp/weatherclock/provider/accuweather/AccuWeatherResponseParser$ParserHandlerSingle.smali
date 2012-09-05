.class Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
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

.field private hasTemperture:Z

.field private hasTime:Z

.field private hasTimeZone:Z

.field private hasUrl:Z

.field private hasWeatherIcon:Z

.field private hasWeathertext:Z

.field private iconNum:I

.field private nowTemp:F

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

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

.field private time:Ljava/lang/StringBuffer;

.field private timezone:Ljava/lang/StringBuffer;

.field private todayurl:Ljava/lang/String;

.field private tz:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;

.field private url:Ljava/lang/StringBuffer;

.field private weathertext:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "tempScale"
    .parameter "updateDate"

    .prologue
    const/4 v1, 0x0

    .line 387
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    .line 351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    .line 352
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    .line 353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    .line 354
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    .line 358
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->time:Ljava/lang/StringBuffer;

    .line 360
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    .line 361
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    .line 362
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    .line 364
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    .line 365
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    .line 366
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    .line 367
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    .line 368
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    .line 370
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    .line 371
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    .line 372
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 373
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    .line 375
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    .line 376
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    .line 379
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    .line 388
    iput p2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    .line 389
    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "currentGmtOffset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "currentconditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathertext"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathericon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "forecast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "daytime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "hightemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lowtemperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    if-eqz v0, :cond_18

    .line 548
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    if-eqz v0, :cond_e

    .line 549
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 584
    :cond_d
    :goto_d
    return-void

    .line 550
    :cond_e
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    if-eqz v0, :cond_d

    .line 551
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->time:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 553
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    if-eqz v0, :cond_44

    .line 555
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    if-eqz v0, :cond_26

    .line 556
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 557
    :cond_26
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    if-eqz v0, :cond_30

    .line 558
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 559
    :cond_30
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_3a

    .line 560
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 561
    :cond_3a
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    if-eqz v0, :cond_d

    .line 563
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 566
    :cond_44
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    if-eqz v0, :cond_d

    .line 568
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    if-eqz v0, :cond_55

    .line 569
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    if-eqz v0, :cond_55

    .line 570
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 573
    :cond_55
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    if-eqz v0, :cond_d

    .line 575
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    if-eqz v0, :cond_63

    .line 576
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 577
    :cond_63
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    if-eqz v0, :cond_6d

    .line 578
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 579
    :cond_6d
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    if-eqz v0, :cond_d

    .line 580
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v9, 0x0

    .line 456
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_16e

    .line 542
    :goto_a
    return-void

    .line 459
    :pswitch_b
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto :goto_a

    .line 463
    :pswitch_e
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    .line 468
    :goto_3c
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    .line 469
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 471
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->time:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 472
    .local v8, temp:[Ljava/lang/String;
    if-eqz v8, :cond_68

    array-length v3, v8

    if-lez v3, :cond_68

    .line 476
    const/4 v3, 0x0

    :try_start_63
    aget-object v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_16b

    .line 484
    :cond_68
    :goto_68
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto :goto_a

    .line 466
    .end local v8           #temp:[Ljava/lang/String;
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    goto :goto_3c

    .line 488
    :pswitch_87
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    .line 489
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    .line 490
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->url:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    .line 491
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto/16 :goto_a

    .line 494
    :pswitch_ab
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto/16 :goto_a

    .line 495
    :pswitch_af
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto/16 :goto_a

    .line 496
    :pswitch_b3
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto/16 :goto_a

    .line 498
    :pswitch_b7
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto/16 :goto_a

    .line 502
    :pswitch_bb
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto/16 :goto_a

    .line 506
    :pswitch_bf
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    if-eqz v3, :cond_122

    .line 508
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 514
    .local v0, today:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->nowTemp:F

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tz:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->todayurl:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>(ILcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v1, todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->iconNum:I

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setIconNum(I)V

    .line 516
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->updateDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    .line 519
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 531
    .end local v0           #today:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    .end local v1           #todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    :goto_11e
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_a

    .line 523
    :cond_122
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tempScale:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 529
    .local v2, adayinfo:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    goto :goto_11e

    .line 534
    .end local v2           #adayinfo:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    :pswitch_151
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_a

    .line 535
    :pswitch_155
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_a

    .line 537
    :pswitch_159
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->alldayurl:Ljava/lang/String;

    .line 538
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 539
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_a

    .line 540
    :pswitch_167
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    goto/16 :goto_a

    .line 481
    .restart local v8       #temp:[Ljava/lang/String;
    :catch_16b
    move-exception v3

    goto/16 :goto_68

    .line 456
    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_87
        :pswitch_ab
        :pswitch_af
        :pswitch_b3
        :pswitch_b7
        :pswitch_bb
        :pswitch_bf
        :pswitch_151
        :pswitch_155
        :pswitch_159
        :pswitch_167
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

    .line 408
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_be

    .line 451
    :goto_b
    return-void

    .line 411
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->timezone:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 412
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currenttemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 413
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->weathertext:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 414
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->currentweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 415
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 417
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 419
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .line 421
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLocal:Z

    goto :goto_b

    .line 423
    :pswitch_65
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTimeZone:Z

    goto :goto_b

    .line 424
    :pswitch_68
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasCurrent:Z

    goto :goto_b

    .line 425
    :pswitch_6b
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTemperture:Z

    goto :goto_b

    .line 426
    :pswitch_6e
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeathertext:Z

    goto :goto_b

    .line 427
    :pswitch_71
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasWeatherIcon:Z

    goto :goto_b

    .line 429
    :pswitch_74
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->first:Z

    .line 430
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasForeCast:Z

    goto :goto_b

    .line 434
    :pswitch_79
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDay:Z

    goto :goto_b

    .line 436
    :pswitch_7c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastweathericon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 437
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecasthightemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 438
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->forecastlowtemp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 439
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->dayurl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 441
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasDayTime:Z

    goto/16 :goto_b

    .line 444
    :pswitch_ac
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasHightemp:Z

    goto/16 :goto_b

    .line 445
    :pswitch_b0
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasLowtemp:Z

    goto/16 :goto_b

    .line 447
    :pswitch_b4
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasAllUrl:Z

    .line 448
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasUrl:Z

    goto/16 :goto_b

    .line 449
    :pswitch_ba
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;->hasTime:Z

    goto/16 :goto_b

    .line 408
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_c
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_79
        :pswitch_7c
        :pswitch_ac
        :pswitch_b0
        :pswitch_b4
        :pswitch_ba
    .end packed-switch
.end method
