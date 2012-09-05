.class public Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;
.super Ljava/lang/Object;
.source "StockIndicesXmlparseHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field change:Ljava/lang/String;

.field chg_percent:Ljava/lang/String;

.field day_high:Ljava/lang/String;

.field day_low:Ljava/lang/String;

.field details_url:Ljava/lang/String;

.field eps_curr_year:Ljava/lang/String;

.field exchange:Ljava/lang/String;

.field private item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

.field market_cap:Ljava/lang/String;

.field name:Ljava/lang/String;

.field open:Ljava/lang/String;

.field pe_ratio:Ljava/lang/String;

.field prev_close:Ljava/lang/String;

.field price:Ljava/lang/String;

.field sb:Ljava/lang/StringBuffer;

.field stockItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field symbol:Ljava/lang/String;

.field time_stamp:Ljava/lang/String;

.field volume:Ljava/lang/String;

.field year_high:Ljava/lang/String;

.field year_low:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->stockItems:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->exchange:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->price:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->change:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->chg_percent:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_high:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_low:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->volume:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->prev_close:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->open:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->market_cap:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->pe_ratio:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_high:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_low:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->symbol:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->details_url:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static checkUpdown(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "change"

    .prologue
    const-wide/16 v5, 0x0

    .line 416
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 417
    .local v3, firstOne:C
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 418
    .local v0, changeValue:D
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_32

    .line 420
    const-string v4, "-"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 421
    const-string v4, "-"

    .line 440
    .end local v0           #changeValue:D
    .end local v3           #firstOne:C
    :goto_1f
    return-object v4

    .line 422
    .restart local v0       #changeValue:D
    .restart local v3       #firstOne:C
    :cond_20
    const-string v4, "+"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 423
    const-string v4, "+"

    goto :goto_1f

    .line 425
    :cond_2f
    const-string v4, "N"

    goto :goto_1f

    .line 429
    :cond_32
    cmpl-double v4, v0, v5

    if-lez v4, :cond_39

    .line 430
    const-string v4, "+"

    goto :goto_1f

    .line 431
    :cond_39
    cmpg-double v4, v0, v5

    if-gez v4, :cond_40

    .line 432
    const-string v4, "-"

    goto :goto_1f

    .line 434
    :cond_40
    const-string v4, "0"
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    goto :goto_1f

    .line 437
    .end local v0           #changeValue:D
    .end local v3           #firstOne:C
    :catch_43
    move-exception v2

    .line 439
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    const-string v4, "N"

    goto :goto_1f
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
    .line 69
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 70
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
    .line 460
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

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 78
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_NAME->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

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

    .line 81
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_55

    .line 83
    :cond_40
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_4b

    .line 84
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_NAME value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_4b
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    .line 408
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 409
    return-void

    .line 89
    :cond_55
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    goto :goto_4f

    .line 92
    :cond_5c
    const-string v1, "exchange"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 94
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_EXCHANGE->"

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

    .line 97
    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a4

    .line 99
    :cond_94
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_9f

    .line 100
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EXCHANGE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_9f
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->exchange:Ljava/lang/String;

    goto :goto_4f

    .line 105
    :cond_a4
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->exchange:Ljava/lang/String;

    goto :goto_4f

    .line 108
    :cond_ab
    const-string v1, "price"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 110
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_PRICE->"

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

    .line 113
    if-eqz v0, :cond_e3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f4

    .line 115
    :cond_e3
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_ee

    .line 116
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_PRICE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_ee
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->price:Ljava/lang/String;

    goto/16 :goto_4f

    .line 121
    :cond_f4
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->price:Ljava/lang/String;

    goto/16 :goto_4f

    .line 124
    :cond_fc
    const-string v1, "change"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 126
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_CHANGE->"

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

    .line 129
    if-eqz v0, :cond_134

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_145

    .line 131
    :cond_134
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_13f

    .line 132
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CHANGE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_13f
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->change:Ljava/lang/String;

    goto/16 :goto_4f

    .line 137
    :cond_145
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->change:Ljava/lang/String;

    goto/16 :goto_4f

    .line 140
    :cond_14d
    const-string v1, "chg_percent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 142
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_CHG_PCT->"

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

    .line 145
    if-eqz v0, :cond_185

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_196

    .line 147
    :cond_185
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_190

    .line 148
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CHG_PCT value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_190
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->chg_percent:Ljava/lang/String;

    goto/16 :goto_4f

    .line 153
    :cond_196
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->chg_percent:Ljava/lang/String;

    goto/16 :goto_4f

    .line 156
    :cond_19a
    const-string v1, "day_high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 158
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_DAY_HIGH->"

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

    .line 161
    if-eqz v0, :cond_1d2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e3

    .line 163
    :cond_1d2
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_1dd

    .line 164
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DAY_HIGH value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1dd
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_high:Ljava/lang/String;

    goto/16 :goto_4f

    .line 169
    :cond_1e3
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_high:Ljava/lang/String;

    goto/16 :goto_4f

    .line 173
    :cond_1eb
    const-string v1, "day_low"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 175
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_DAY_LOW->"

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

    .line 178
    if-eqz v0, :cond_223

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_234

    .line 180
    :cond_223
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_22e

    .line 181
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DAY_LOW value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_22e
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_low:Ljava/lang/String;

    goto/16 :goto_4f

    .line 186
    :cond_234
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_low:Ljava/lang/String;

    goto/16 :goto_4f

    .line 190
    :cond_23c
    const-string v1, "volume"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28d

    .line 192
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_VOLUME->"

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

    .line 195
    if-eqz v0, :cond_274

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_285

    .line 197
    :cond_274
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_27f

    .line 198
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_VOLUME value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_27f
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->volume:Ljava/lang/String;

    goto/16 :goto_4f

    .line 203
    :cond_285
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->volume:Ljava/lang/String;

    goto/16 :goto_4f

    .line 207
    :cond_28d
    const-string v1, "prev_close"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2de

    .line 209
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_CLOSE->"

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

    .line 212
    if-eqz v0, :cond_2c5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d6

    .line 214
    :cond_2c5
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_2d0

    .line 215
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CLOSE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2d0
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->prev_close:Ljava/lang/String;

    goto/16 :goto_4f

    .line 220
    :cond_2d6
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->prev_close:Ljava/lang/String;

    goto/16 :goto_4f

    .line 224
    :cond_2de
    const-string v1, "open"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32f

    .line 226
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_OPEN->"

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

    .line 229
    if-eqz v0, :cond_316

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_327

    .line 231
    :cond_316
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_321

    .line 232
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_OPEN value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_321
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->open:Ljava/lang/String;

    goto/16 :goto_4f

    .line 237
    :cond_327
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->open:Ljava/lang/String;

    goto/16 :goto_4f

    .line 241
    :cond_32f
    const-string v1, "market_cap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_380

    .line 243
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_MARCAP->"

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

    .line 246
    if-eqz v0, :cond_367

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_378

    .line 248
    :cond_367
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_372

    .line 249
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_MARCAP value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_372
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->market_cap:Ljava/lang/String;

    goto/16 :goto_4f

    .line 254
    :cond_378
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->market_cap:Ljava/lang/String;

    goto/16 :goto_4f

    .line 258
    :cond_380
    const-string v1, "eps_curr_year"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d1

    .line 260
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_EPSYEAR->"

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

    .line 263
    if-eqz v0, :cond_3b8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3c9

    .line 265
    :cond_3b8
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_3c3

    .line 266
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EPSYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3c3
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    goto/16 :goto_4f

    .line 271
    :cond_3c9
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    goto/16 :goto_4f

    .line 275
    :cond_3d1
    const-string v1, "pe_ratio"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_422

    .line 277
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_PERATIO->"

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

    .line 280
    if-eqz v0, :cond_409

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_41a

    .line 282
    :cond_409
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_414

    .line 283
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EPSYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_414
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->pe_ratio:Ljava/lang/String;

    goto/16 :goto_4f

    .line 288
    :cond_41a
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->pe_ratio:Ljava/lang/String;

    goto/16 :goto_4f

    .line 292
    :cond_422
    const-string v1, "year_high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_473

    .line 294
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_HIGHYEAR->"

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

    .line 297
    if-eqz v0, :cond_45a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_46b

    .line 299
    :cond_45a
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_465

    .line 300
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_HIGHYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_465
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_high:Ljava/lang/String;

    goto/16 :goto_4f

    .line 305
    :cond_46b
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_high:Ljava/lang/String;

    goto/16 :goto_4f

    .line 309
    :cond_473
    const-string v1, "year_low"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c4

    .line 311
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_LOWYEAR->"

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

    .line 314
    if-eqz v0, :cond_4ab

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4bc

    .line 316
    :cond_4ab
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_4b6

    .line 317
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_LOWYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_4b6
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_low:Ljava/lang/String;

    goto/16 :goto_4f

    .line 322
    :cond_4bc
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_low:Ljava/lang/String;

    goto/16 :goto_4f

    .line 325
    :cond_4c4
    const-string v1, "symbol"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_515

    .line 327
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_SYMBOL->"

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

    .line 330
    if-eqz v0, :cond_4fc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_50d

    .line 332
    :cond_4fc
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_507

    .line 333
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_SYMBOL value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_507
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->symbol:Ljava/lang/String;

    goto/16 :goto_4f

    .line 338
    :cond_50d
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->symbol:Ljava/lang/String;

    goto/16 :goto_4f

    .line 341
    :cond_515
    const-string v1, "details_url"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_566

    .line 343
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_DETAIL_URL->"

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

    .line 346
    if-eqz v0, :cond_54d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_55e

    .line 348
    :cond_54d
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_558

    .line 349
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DETAIL_URL value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_558
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->details_url:Ljava/lang/String;

    goto/16 :goto_4f

    .line 354
    :cond_55e
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->details_url:Ljava/lang/String;

    goto/16 :goto_4f

    .line 358
    :cond_566
    const-string v1, "ts"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b7

    .line 360
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quote pashing result LIST_TIME_STAMP->"

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

    .line 363
    if-eqz v0, :cond_59e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5af

    .line 365
    :cond_59e
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_5a9

    .line 366
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DETAIL_URL value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_5a9
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    goto/16 :goto_4f

    .line 371
    :cond_5af
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    goto/16 :goto_4f

    .line 375
    :cond_5b7
    const-string v1, "quote"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 377
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###quote pashing result value total value->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_high:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_low:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setName(Ljava/lang/String;)V

    .line 380
    const-string v1, "-"

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->name:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->exchange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setExchange(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->price:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrice(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->change:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChange(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->chg_percent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setChangePercent(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_high:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setHigh(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->day_low:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setLow(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->volume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setVolume(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->prev_close:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPrevclose(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->open:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setOpen(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->market_cap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setMarketcap(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->pe_ratio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setPeratio(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setEpscurryear(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_high:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearhigh(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->year_low:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setYearlow(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->symbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setSymbol(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdateDate(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->details_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setLinkUrl(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->chg_percent:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->checkUpdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdown(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v1, "-"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    if-eqz v1, :cond_4f

    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->time_stamp:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 403
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->stockItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 405
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    goto/16 :goto_4f
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
    .line 463
    return-void
.end method

.method public getIndiceSearchData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->stockItems:Ljava/util/ArrayList;

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
    .line 466
    return-void
.end method

.method public initIndicesSearchData()V
    .registers 2

    .prologue
    .line 451
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 452
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
    .line 469
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 472
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
    .line 475
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
    .line 478
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
    .line 446
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 447
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
    .line 481
    return-void
.end method
