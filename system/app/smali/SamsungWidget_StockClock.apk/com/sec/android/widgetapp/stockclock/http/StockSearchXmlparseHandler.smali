.class public Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;
.super Ljava/lang/Object;
.source "StockSearchXmlparseHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field exchange:Ljava/lang/String;

.field exchange_name:Ljava/lang/String;

.field i:I

.field private item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

.field name:Ljava/lang/String;

.field sb:Ljava/lang/StringBuffer;

.field stockItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->stockItems:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->i:I

    .line 30
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->name:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    .line 32
    const-string v0, "-"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    .line 33
    const-string v0, "-"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

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
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 40
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
    .line 43
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 52
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search pashing result name->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localName->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_55

    .line 57
    :cond_40
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_4b

    .line 58
    const-string v1, ""

    const-string v2, "searchParser Get name value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_4b
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->name:Ljava/lang/String;

    .line 142
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 143
    return-void

    .line 63
    :cond_55
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->name:Ljava/lang/String;

    goto :goto_4f

    .line 66
    :cond_5c
    const-string v1, "symbol"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 68
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search pashing result symbol->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localName->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a4

    .line 73
    :cond_94
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_9f

    .line 74
    const-string v1, ""

    const-string v2, "searchParser Get symbol value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_9f
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    goto :goto_4f

    .line 79
    :cond_a4
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    goto :goto_4f

    .line 82
    :cond_ab
    const-string v1, "exchange"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 84
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search pashing result exchange->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localName->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v0, :cond_e3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f4

    .line 89
    :cond_e3
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_ee

    .line 90
    const-string v1, ""

    const-string v2, "searchParser Get exchange value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_ee
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    goto/16 :goto_4f

    .line 95
    :cond_f4
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    goto/16 :goto_4f

    .line 98
    :cond_fc
    const-string v1, "exchange_name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 100
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search pashing result exchange->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " localName->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v0, :cond_134

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_145

    .line 105
    :cond_134
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_13f

    .line 106
    const-string v1, ""

    const-string v2, "searchParser Get exchange value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_13f
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    goto/16 :goto_4f

    .line 111
    :cond_145
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    goto/16 :goto_4f

    .line 114
    :cond_14d
    const-string v1, "result"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 117
    const-string v1, ""

    const-string v2, "#################################################################################"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###search pashing result value total value->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, ""

    const-string v2, "#################################################################################"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 123
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 125
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->symbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 127
    const-string v1, "-"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 129
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 135
    :goto_1bf
    const-string v1, "-"

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange:Ljava/lang/String;

    .line 137
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#################################################################################"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->stockItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->i:I

    goto/16 :goto_4f

    .line 133
    :cond_1ee
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->exchange_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    goto :goto_1bf
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
    .line 146
    return-void
.end method

.method public getStockSearchData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->stockItems:Ljava/util/ArrayList;

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
    .line 149
    return-void
.end method

.method public initStockSearchData()V
    .registers 2

    .prologue
    .line 178
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 179
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
    .line 152
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 155
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
    .line 158
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
    .line 161
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
    .line 166
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 167
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
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
    .line 174
    return-void
.end method
