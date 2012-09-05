.class public Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
.super Ljava/lang/Object;
.source "AccuWeatherResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;,
        Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;
    }
.end annotation


# instance fields
.field info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

.field lstResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/daemonapp/info/CityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    .line 28
    iput-object v0, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    .line 383
    return-void
.end method


# virtual methods
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
            "Lcom/sec/android/daemonapp/info/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 318
    .local v4, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 319
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 321
    .local v2, myReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;

    invoke-direct {v3, p0}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;-><init>(Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;)V

    .line 322
    .local v3, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 323
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_24

    .line 329
    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #myReader:Lorg/xml/sax/XMLReader;
    .end local v3           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_21
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    return-object v5

    .line 325
    :catch_24
    move-exception v1

    .line 327
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

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public parseDetailWeather(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/daemonapp/info/DetailWeatherInfo;
    .registers 12
    .parameter "tempScale"
    .parameter "responseBody"
    .parameter "updateDate"

    .prologue
    .line 336
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 337
    .local v4, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 338
    .local v0, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 340
    .local v2, myReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;

    invoke-direct {v3, p0, p1, p3}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerSingle;-><init>(Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;ILjava/lang/String;)V

    .line 341
    .local v3, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 342
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_24

    .line 351
    iget-object v5, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->info:Lcom/sec/android/daemonapp/info/DetailWeatherInfo;

    .end local v0           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v2           #myReader:Lorg/xml/sax/XMLReader;
    .end local v3           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v4           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :goto_23
    return-object v5

    .line 345
    :catch_24
    move-exception v1

    .line 347
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseDetailWeather catch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v5, 0x0

    goto :goto_23
.end method

.method public parseDetailWeatherLocation(Lorg/xml/sax/InputSource;)Lcom/sec/android/daemonapp/info/CityInfo;
    .registers 15
    .parameter "inputSource"

    .prologue
    const/4 v10, 0x0

    .line 358
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 359
    .local v9, parserModel:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 360
    .local v1, concreteParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 362
    .local v7, myReader:Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;

    invoke-direct {v8, p0}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser$ParserHandlerList;-><init>(Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;)V

    .line 363
    .local v8, mySample:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 364
    invoke-interface {v7, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_2e

    .line 377
    iget-object v11, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    if-eqz v11, :cond_2d

    iget-object v11, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2d

    .line 378
    iget-object v10, p0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->lstResult:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/daemonapp/info/CityInfo;

    .line 380
    .end local v1           #concreteParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #myReader:Lorg/xml/sax/XMLReader;
    .end local v8           #mySample:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v9           #parserModel:Ljavax/xml/parsers/SAXParserFactory;
    :cond_2d
    return-object v10

    .line 366
    :catch_2e
    move-exception v4

    .line 370
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

    invoke-static {v11}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 372
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

    .line 373
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

    invoke-static {v11}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto :goto_50
.end method
