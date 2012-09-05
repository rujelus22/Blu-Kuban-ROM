.class public Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
.super Ljava/lang/Object;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;,
        Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;,
        Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;,
        Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerList;
    }
.end annotation


# instance fields
.field info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

.field locitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field lstResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 31
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .line 32
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->locitems:Ljava/util/ArrayList;

    .line 970
    return-void
.end method


# virtual methods
.method public parseALocation(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .registers 15
    .parameter "inputSource"
    .parameter "updateDate"

    .prologue
    .line 946
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 947
    .local v9, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 948
    .local v1, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 950
    .local v7, myReader:Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerACity;-><init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;)V

    .line 951
    .local v8, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 952
    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1a

    .line 966
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->results:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .end local v1           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #myReader:Lorg/xml/sax/XMLReader;
    .end local v8           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v9           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_19
    return-object v10

    .line 954
    :catch_1a
    move-exception v4

    .line 958
    .local v4, ex:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDetailWeatherLocation() exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 960
    .local v3, ele:[Ljava/lang/StackTraceElement;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3c
    if-ge v5, v6, :cond_6b

    aget-object v2, v0, v5

    .line 961
    .local v2, e:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 960
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 964
    .end local v2           #e:Ljava/lang/StackTraceElement;
    :cond_6b
    const/4 v10, 0x0

    goto :goto_19
.end method

.method public parseCityList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 40
    .local v4, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 41
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 43
    .local v2, myReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerList;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerList;-><init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;)V

    .line 44
    .local v3, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 45
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_24

    .line 51
    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #myReader:Lorg/xml/sax/XMLReader;
    .end local v3           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_21
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    return-object v5

    .line 47
    :catch_24
    move-exception v1

    .line 49
    .local v1, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccuWeather Response Parser for city list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .registers 10
    .parameter "tempScale"
    .parameter "inputSource"
    .parameter "updateDate"

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 132
    .local v4, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 133
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 135
    .local v2, myReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;

    invoke-direct {v3, p0, p1, p3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerSingle;-><init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;ILjava/lang/String;)V

    .line 136
    .local v3, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 137
    invoke-interface {v2, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1a

    .line 145
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #myReader:Lorg/xml/sax/XMLReader;
    .end local v3           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_19
    return-object v5

    .line 139
    :catch_1a
    move-exception v1

    .line 141
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v5, 0x0

    goto :goto_19
.end method

.method public parseDetailWeatherLocation(Lorg/xml/sax/InputSource;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .registers 15
    .parameter "inputSource"

    .prologue
    const/4 v10, 0x0

    .line 839
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 840
    .local v9, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 841
    .local v1, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 843
    .local v7, myReader:Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerList;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerList;-><init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;)V

    .line 844
    .local v8, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 845
    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_2e

    .line 858
    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    if-eqz v11, :cond_2d

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2d

    .line 859
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 861
    .end local v1           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #myReader:Lorg/xml/sax/XMLReader;
    .end local v8           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v9           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :cond_2d
    return-object v10

    .line 847
    :catch_2e
    move-exception v4

    .line 851
    .local v4, ex:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseDetailWeatherLocation() exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 853
    .local v3, ele:[Ljava/lang/StackTraceElement;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_50
    if-ge v5, v6, :cond_2d

    aget-object v2, v0, v5

    .line 854
    .local v2, e:Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 853
    add-int/lit8 v5, v5, 0x1

    goto :goto_50
.end method

.method public parseDetailWeather_LocCities(ILjava/lang/String;Lorg/xml/sax/InputSource;)Ljava/util/ArrayList;
    .registers 16
    .parameter "tempScale"
    .parameter "updateDate"
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/xml/sax/InputSource;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 154
    .local v9, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 155
    .local v1, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 157
    .local v7, myReader:Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;

    invoke-direct {v8, p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser$ParserHandlerLocList;-><init>(Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;ILjava/lang/String;)V

    .line 158
    .local v8, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 159
    const-string v10, "UTF-8"

    invoke-virtual {p3, v10}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 160
    invoke-interface {v7, p3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 174
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->locitems:Ljava/util/ArrayList;

    .end local v1           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #myReader:Lorg/xml/sax/XMLReader;
    .end local v8           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v9           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_1e
    return-object v10

    .line 162
    :catch_1f
    move-exception v4

    .line 166
    .local v4, ex:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDetailWeather() exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 168
    .local v3, ele:[Ljava/lang/StackTraceElement;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_41
    if-ge v5, v6, :cond_70

    aget-object v2, v0, v5

    .line 169
    .local v2, e:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 172
    .end local v2           #e:Ljava/lang/StackTraceElement;
    :cond_70
    const/4 v10, 0x0

    goto :goto_1e
.end method
