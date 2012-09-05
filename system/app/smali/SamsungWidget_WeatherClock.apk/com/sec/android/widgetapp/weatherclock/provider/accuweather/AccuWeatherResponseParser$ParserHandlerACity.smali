.class Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserHandlerACity"
.end annotation


# instance fields
.field private city:Ljava/lang/StringBuffer;

.field private hasCity:Z

.field private hasLatitude:Z

.field private hasLocal:Z

.field private hasLongitude:Z

.field private hasState:Z

.field private latitude:Ljava/lang/StringBuffer;

.field private longitude:Ljava/lang/StringBuffer;

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

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 986
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 972
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->city:Ljava/lang/StringBuffer;

    .line 973
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->state:Ljava/lang/StringBuffer;

    .line 974
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->latitude:Ljava/lang/StringBuffer;

    .line 975
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->longitude:Ljava/lang/StringBuffer;

    .line 977
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLocal:Z

    .line 978
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasCity:Z

    .line 979
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasState:Z

    .line 980
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLatitude:Z

    .line 981
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLongitude:Z

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    .line 987
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    const-string v1, "city"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    const-string v1, "lon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLocal:Z

    if-eqz v0, :cond_d

    .line 1040
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasCity:Z

    if-eqz v0, :cond_e

    .line 1041
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1049
    :cond_d
    :goto_d
    return-void

    .line 1042
    :cond_e
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasState:Z

    if-eqz v0, :cond_18

    .line 1043
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 1044
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLatitude:Z

    if-eqz v0, :cond_22

    .line 1045
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->latitude:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 1046
    :cond_22
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLongitude:Z

    if-eqz v0, :cond_d

    .line 1047
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->longitude:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_d
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v2, 0x0

    .line 1018
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    .line 1034
    :goto_a
    return-void

    .line 1021
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->latitude:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->longitude:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1026
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLocal:Z

    goto :goto_a

    .line 1029
    :pswitch_52
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasCity:Z

    goto :goto_a

    .line 1030
    :pswitch_55
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasState:Z

    goto :goto_a

    .line 1031
    :pswitch_58
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLatitude:Z

    goto :goto_a

    .line 1032
    :pswitch_5b
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLongitude:Z

    goto :goto_a

    .line 1018
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
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

    .line 996
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->tagnames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 1013
    :goto_b
    return-void

    .line 999
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->city:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->city:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1000
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->state:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->state:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1001
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->latitude:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->latitude:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1002
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->longitude:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->longitude:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1004
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->this$0:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1006
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLocal:Z

    goto :goto_b

    .line 1008
    :pswitch_44
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasCity:Z

    goto :goto_b

    .line 1009
    :pswitch_47
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasState:Z

    goto :goto_b

    .line 1010
    :pswitch_4a
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLatitude:Z

    goto :goto_b

    .line 1011
    :pswitch_4d
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;->hasLongitude:Z

    goto :goto_b

    .line 996
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_c
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method
