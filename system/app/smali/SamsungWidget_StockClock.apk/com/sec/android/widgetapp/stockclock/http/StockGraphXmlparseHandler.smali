.class public Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;
.super Ljava/lang/Object;
.source "StockGraphXmlparseHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field close:D

.field date:Ljava/lang/String;

.field high:D

.field private mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

.field sb:Ljava/lang/StringBuffer;

.field timestamp:J

.field volume:D


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 26
    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->high:D

    .line 27
    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->volume:D

    .line 28
    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->close:D

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->timestamp:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->date:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 37
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 46
    const/4 v10, 0x0

    .line 48
    .local v10, tmp:Ljava/lang/String;
    const-string v1, "close"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 50
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 52
    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 54
    :cond_19
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_24

    .line 55
    const-string v1, ""

    const-string v2, "graphParser Get close value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_24
    iput-wide v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->close:D

    .line 127
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 128
    return-void

    .line 60
    :cond_2d
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->close:D

    goto :goto_26

    .line 63
    :cond_38
    const-string v1, "high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 65
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 67
    if-eqz v10, :cond_4e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5c

    .line 69
    :cond_4e
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_59

    .line 70
    const-string v1, ""

    const-string v2, "graphParser Get HIGH value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_59
    iput-wide v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->high:D

    goto :goto_26

    .line 75
    :cond_5c
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->high:D

    goto :goto_26

    .line 78
    :cond_67
    const-string v1, "time"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 80
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 81
    if-eqz v10, :cond_7d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8d

    .line 83
    :cond_7d
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_88

    .line 84
    const-string v1, ""

    const-string v2, "graphParser Get timestamp value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_88
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->timestamp:J

    goto :goto_26

    .line 89
    :cond_8d
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->timestamp:J

    goto :goto_26

    .line 92
    :cond_98
    const-string v1, "volume"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 94
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    if-eqz v10, :cond_ae

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_bd

    .line 98
    :cond_ae
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_b9

    .line 99
    const-string v1, ""

    const-string v2, "graphParser Get volume value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_b9
    iput-wide v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->volume:D

    goto/16 :goto_26

    .line 104
    :cond_bd
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->volume:D

    goto/16 :goto_26

    .line 107
    :cond_c9
    const-string v1, "date"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 109
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 111
    if-eqz v10, :cond_df

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f0

    .line 113
    :cond_df
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_ea

    .line 114
    const-string v1, ""

    const-string v2, "graphParser Get volume value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_ea
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->date:Ljava/lang/String;

    goto/16 :goto_26

    .line 119
    :cond_f0
    iput-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->date:Ljava/lang/String;

    goto/16 :goto_26

    .line 122
    :cond_f4
    const-string v1, "value"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 124
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    iget-wide v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->high:D

    iget-wide v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->volume:D

    iget-wide v5, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->timestamp:J

    iget-wide v7, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->close:D

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->date:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 125
    .local v0, graph:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    goto/16 :goto_26
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public getStockGraphData()Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public initStockGraphData()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 170
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 137
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 140
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 152
    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    :cond_e
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method
