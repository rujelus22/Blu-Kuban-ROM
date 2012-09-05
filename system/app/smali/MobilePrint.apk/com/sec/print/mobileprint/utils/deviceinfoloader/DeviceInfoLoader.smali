.class public Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;
.super Ljava/lang/Object;
.source "DeviceInfoLoader.java"


# instance fields
.field deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getFixedSamsungModelName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "modelName"

    .prologue
    const/4 v3, 0x1

    .line 103
    const-string v0, ""

    .line 104
    .local v0, fixedModelName:Ljava/lang/String;
    const-string v1, "Samsung"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_30

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_f
    const-string v1, "series"

    const-string v2, "Series"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "Series"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 112
    const-string v1, "Samsung ML-2251NP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v3, :cond_2f

    const-string v1, "Samsung ML-4050 DMV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_48

    .line 121
    :cond_2f
    :goto_2f
    return-object v0

    .line 107
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 116
    :cond_48
    const-string v1, ""

    const-string v2, "+ Series"

    invoke-static {v1, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Series"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public static loadCapability(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .registers 12
    .parameter "inputStream"
    .parameter "modelName"

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 83
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-static {p1}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->getFixedSamsungModelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, fixedModelName:Ljava/lang/String;
    const-string v7, "DeviceInfoLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadCapability : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v4, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;

    invoke-direct {v4, v3}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, handler:Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
    :try_start_26
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 88
    .local v5, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5, p0, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2d
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_41

    .line 99
    .end local v5           #parser:Ljavax/xml/parsers/SAXParser;
    :cond_2d
    :goto_2d
    return-object v6

    .line 89
    :catch_2e
    move-exception v1

    .line 90
    .local v1, eSAX:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Found"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2d

    .line 91
    invoke-virtual {v4, v3}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v6

    goto :goto_2d

    .line 95
    .end local v1           #eSAX:Lorg/xml/sax/SAXException;
    :catch_41
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    goto :goto_2d
.end method

.method public static loadModelList(Ljava/io/InputStream;)Ljava/util/HashMap;
    .registers 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v3, modelList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 69
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_9
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 70
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;

    sget v5, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_MODEL_SERIES:I

    invoke-direct {v2, v5}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;-><init>(I)V

    .line 71
    .local v2, handler:Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
    invoke-virtual {v4, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 72
    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->getModelSerieList()Ljava/util/HashMap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1c

    move-result-object v3

    .line 77
    return-object v3

    .line 73
    .end local v2           #handler:Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    :catch_1c
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .registers 4
    .parameter "modelName"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    if-nez v1, :cond_6

    .line 57
    const/4 v1, 0x0

    .line 60
    :goto_5
    return-object v1

    .line 59
    :cond_6
    invoke-static {p1}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->getFixedSamsungModelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, fixedModelName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    invoke-virtual {v1, v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v1

    goto :goto_5
.end method

.method public getProductList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->getProductList()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_5
.end method

.method public load(Ljava/io/InputStream;)V
    .registers 7
    .parameter "inputStream"

    .prologue
    .line 36
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 38
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_4
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 39
    .local v3, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;

    sget v4, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ALL:I

    invoke-direct {v2, v4}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;-><init>(I)V

    .line 40
    .local v2, handler:Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
    invoke-virtual {v3, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 41
    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->getDeviceLists()Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->deviceListData:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 45
    return-void

    .line 42
    .end local v2           #handler:Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
    .end local v3           #parser:Ljavax/xml/parsers/SAXParser;
    :catch_19
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
