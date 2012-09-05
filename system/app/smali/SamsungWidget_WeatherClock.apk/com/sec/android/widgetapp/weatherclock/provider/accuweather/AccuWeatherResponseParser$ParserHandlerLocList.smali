.class Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserHandlerLocList"
.end annotation


# instance fields
.field private UpdateDate:Ljava/lang/String;

.field private city:Ljava/lang/StringBuffer;

.field private cityId:Ljava/lang/StringBuffer;

.field private country:Ljava/lang/String;

.field private dontAddCityid:Z

.field private hasCity:Z

.field private hasCityId:Z

.field private hasCurrent:Z

.field private hasIcon:Z

.field private hasLat:Z

.field private hasLocal:Z

.field private hasLocation:Z

.field private hasLon:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private hasTemp:Z

.field private icon:Ljava/lang/StringBuffer;

.field private lat:Ljava/lang/StringBuffer;

.field private lon:Ljava/lang/StringBuffer;

.field private state:Ljava/lang/StringBuffer;

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

.field private temp:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "tempScale"
    .parameter "updateDate"

    .prologue
    const/4 v1, 0x0

    .line 207
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->city:Ljava/lang/StringBuffer;

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->state:Ljava/lang/StringBuffer;

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lat:Ljava/lang/StringBuffer;

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lon:Ljava/lang/StringBuffer;

    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->temp:Ljava/lang/StringBuffer;

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->icon:Ljava/lang/StringBuffer;

    .line 188
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocation:Z

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocal:Z

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCity:Z

    .line 191
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasState:Z

    .line 192
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCityId:Z

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasPostalCode:Z

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLat:Z

    .line 195
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLon:Z

    .line 197
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCurrent:Z

    .line 198
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasTemp:Z

    .line 199
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasIcon:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    .line 203
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->dontAddCityid:Z

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->country:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->UpdateDate:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "city"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "cityId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "weathericon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    const-string v1, "postalCode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->locitems:Ljava/util/ArrayList;

    .line 222
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocation:Z

    if-eqz v0, :cond_11

    .line 321
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocal:Z

    if-eqz v0, :cond_44

    .line 323
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCity:Z

    if-eqz v0, :cond_12

    .line 324
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 344
    :cond_11
    :goto_11
    return-void

    .line 325
    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasState:Z

    if-eqz v0, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 327
    :cond_1c
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCityId:Z

    if-eqz v0, :cond_26

    .line 328
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 329
    :cond_26
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasPostalCode:Z

    if-eqz v0, :cond_30

    .line 330
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 331
    :cond_30
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLat:Z

    if-eqz v0, :cond_3a

    .line 332
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lat:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 333
    :cond_3a
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLon:Z

    if-eqz v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 336
    :cond_44
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCurrent:Z

    if-eqz v0, :cond_11

    .line 338
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasTemp:Z

    if-eqz v0, :cond_52

    .line 339
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->temp:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 340
    :cond_52
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasIcon:Z

    if-eqz v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->icon:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v4, 0x0

    .line 266
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_c2

    .line 315
    :goto_a
    return-void

    .line 269
    :pswitch_b
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;-><init>()V

    .line 270
    .local v0, ci:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setCity(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lat:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLatitude(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLongitude(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setState(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->icon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setIcon(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->temp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setTemp(Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->dontAddCityid:Z

    if-eqz v1, :cond_93

    const-string v1, "postalCode:"

    :goto_51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->dontAddCityid:Z

    if-eqz v1, :cond_96

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->country:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setLocation(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->UpdateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->locitems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocation:Z

    goto/16 :goto_a

    .line 278
    :cond_93
    const-string v1, "cityId:"

    goto :goto_51

    :cond_96
    const-string v1, ""

    goto :goto_78

    .line 285
    .end local v0           #ci:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :pswitch_99
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocal:Z

    goto/16 :goto_a

    .line 288
    :pswitch_9d
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCity:Z

    goto/16 :goto_a

    .line 291
    :pswitch_a1
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasState:Z

    goto/16 :goto_a

    .line 294
    :pswitch_a5
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCityId:Z

    goto/16 :goto_a

    .line 297
    :pswitch_a9
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLat:Z

    goto/16 :goto_a

    .line 300
    :pswitch_ad
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLon:Z

    goto/16 :goto_a

    .line 303
    :pswitch_b1
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCurrent:Z

    goto/16 :goto_a

    .line 306
    :pswitch_b5
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasTemp:Z

    goto/16 :goto_a

    .line 309
    :pswitch_b9
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasIcon:Z

    goto/16 :goto_a

    .line 312
    :pswitch_bd
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasPostalCode:Z

    goto/16 :goto_a

    .line 266
    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_99
        :pswitch_9d
        :pswitch_a1
        :pswitch_a5
        :pswitch_a9
        :pswitch_ad
        :pswitch_b1
        :pswitch_b5
        :pswitch_b9
        :pswitch_bd
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

    .line 226
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 261
    :goto_b
    return-void

    .line 229
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->city:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 230
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->state:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 231
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 232
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lat:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lat:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 233
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->lon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 234
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->temp:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->temp:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 235
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->icon:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->icon:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 237
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocation:Z

    goto :goto_b

    .line 240
    :pswitch_5c
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLocal:Z

    goto :goto_b

    .line 241
    :pswitch_5f
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCity:Z

    goto :goto_b

    .line 242
    :pswitch_62
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasState:Z

    goto :goto_b

    .line 244
    :pswitch_65
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCityId:Z

    .line 245
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 246
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->dontAddCityid:Z

    goto :goto_b

    .line 249
    :pswitch_75
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLat:Z

    goto :goto_b

    .line 250
    :pswitch_78
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasLon:Z

    goto :goto_b

    .line 251
    :pswitch_7b
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasCurrent:Z

    goto :goto_b

    .line 252
    :pswitch_7e
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasTemp:Z

    goto :goto_b

    .line 253
    :pswitch_81
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasIcon:Z

    goto :goto_b

    .line 255
    :pswitch_84
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->hasPostalCode:Z

    .line 256
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->cityId:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 257
    const-string v0, "country"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->country:Ljava/lang/String;

    .line 258
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;->dontAddCityid:Z

    goto/16 :goto_b

    .line 226
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
    .end packed-switch
.end method
