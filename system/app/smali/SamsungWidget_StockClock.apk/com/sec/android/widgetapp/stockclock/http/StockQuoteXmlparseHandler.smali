.class public Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;
.super Ljava/lang/Object;
.source "StockQuoteXmlparseHandler.java"

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

.field private item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

.field market_cap:Ljava/lang/String;

.field name:Ljava/lang/String;

.field open:Ljava/lang/String;

.field pe_ratio:Ljava/lang/String;

.field prev_close:Ljava/lang/String;

.field price:Ljava/lang/String;

.field resultStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field sb:Ljava/lang/StringBuffer;

.field symbol:Ljava/lang/String;

.field volume:Ljava/lang/String;

.field year_high:Ljava/lang/String;

.field year_low:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->resultStockList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->name:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->exchange:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->price:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->change:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->chg_percent:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_high:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_low:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->volume:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->prev_close:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->open:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->market_cap:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->pe_ratio:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_high:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_low:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->symbol:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->details_url:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static checkUpdown(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "change"

    .prologue
    const-wide/16 v5, 0x0

    .line 382
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 383
    .local v3, firstOne:C
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 384
    .local v0, changeValue:D
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_32

    .line 386
    const-string v4, "-"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 387
    const-string v4, "-"

    .line 406
    .end local v0           #changeValue:D
    .end local v3           #firstOne:C
    :goto_1f
    return-object v4

    .line 388
    .restart local v0       #changeValue:D
    .restart local v3       #firstOne:C
    :cond_20
    const-string v4, "+"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 389
    const-string v4, "+"

    goto :goto_1f

    .line 391
    :cond_2f
    const-string v4, "N"

    goto :goto_1f

    .line 395
    :cond_32
    cmpl-double v4, v0, v5

    if-lez v4, :cond_39

    .line 396
    const-string v4, "+"

    goto :goto_1f

    .line 397
    :cond_39
    cmpg-double v4, v0, v5

    if-gez v4, :cond_40

    .line 398
    const-string v4, "-"

    goto :goto_1f

    .line 400
    :cond_40
    const-string v4, "0"
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    goto :goto_1f

    .line 403
    .end local v0           #changeValue:D
    .end local v3           #firstOne:C
    :catch_43
    move-exception v2

    .line 405
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

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
    .line 73
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

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 81
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 85
    :cond_18
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_23

    .line 86
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_NAME value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_23
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->name:Ljava/lang/String;

    .line 374
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 375
    return-void

    .line 91
    :cond_2d
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->name:Ljava/lang/String;

    goto :goto_27

    .line 94
    :cond_34
    const-string v1, "exchange"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 96
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5a

    .line 100
    :cond_4a
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_55

    .line 101
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EXCHANGE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_55
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->exchange:Ljava/lang/String;

    goto :goto_27

    .line 106
    :cond_5a
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->exchange:Ljava/lang/String;

    goto :goto_27

    .line 109
    :cond_61
    const-string v1, "price"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 111
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_87

    .line 115
    :cond_77
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_82

    .line 116
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_PRICE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_82
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->price:Ljava/lang/String;

    goto :goto_27

    .line 121
    :cond_87
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->price:Ljava/lang/String;

    goto :goto_27

    .line 124
    :cond_8e
    const-string v1, "change"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 126
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b5

    .line 130
    :cond_a4
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_af

    .line 131
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CHANGE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_af
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->change:Ljava/lang/String;

    goto/16 :goto_27

    .line 136
    :cond_b5
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->change:Ljava/lang/String;

    goto/16 :goto_27

    .line 139
    :cond_bd
    const-string v1, "chg_percent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 141
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e4

    .line 145
    :cond_d3
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_de

    .line 146
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CHG_PCT value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_de
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->chg_percent:Ljava/lang/String;

    goto/16 :goto_27

    .line 151
    :cond_e4
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->chg_percent:Ljava/lang/String;

    goto/16 :goto_27

    .line 154
    :cond_ec
    const-string v1, "day_high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 156
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_102

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_113

    .line 160
    :cond_102
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_10d

    .line 161
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DAY_HIGH value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_10d
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_high:Ljava/lang/String;

    goto/16 :goto_27

    .line 166
    :cond_113
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_high:Ljava/lang/String;

    goto/16 :goto_27

    .line 170
    :cond_11b
    const-string v1, "day_low"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 172
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_131

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_142

    .line 176
    :cond_131
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_13c

    .line 177
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DAY_LOW value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_13c
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_low:Ljava/lang/String;

    goto/16 :goto_27

    .line 182
    :cond_142
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_low:Ljava/lang/String;

    goto/16 :goto_27

    .line 186
    :cond_14a
    const-string v1, "volume"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    .line 188
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_160

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_171

    .line 192
    :cond_160
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_16b

    .line 193
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_VOLUME value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_16b
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->volume:Ljava/lang/String;

    goto/16 :goto_27

    .line 198
    :cond_171
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->volume:Ljava/lang/String;

    goto/16 :goto_27

    .line 202
    :cond_179
    const-string v1, "prev_close"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 204
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_18f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a0

    .line 208
    :cond_18f
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_19a

    .line 209
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_CLOSE value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_19a
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->prev_close:Ljava/lang/String;

    goto/16 :goto_27

    .line 214
    :cond_1a0
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->prev_close:Ljava/lang/String;

    goto/16 :goto_27

    .line 218
    :cond_1a8
    const-string v1, "open"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 220
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1be

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1cf

    .line 224
    :cond_1be
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_1c9

    .line 225
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_OPEN value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1c9
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->open:Ljava/lang/String;

    goto/16 :goto_27

    .line 230
    :cond_1cf
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->open:Ljava/lang/String;

    goto/16 :goto_27

    .line 234
    :cond_1d7
    const-string v1, "market_cap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_206

    .line 236
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1ed

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1fe

    .line 240
    :cond_1ed
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_1f8

    .line 241
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_MARCAP value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1f8
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->market_cap:Ljava/lang/String;

    goto/16 :goto_27

    .line 246
    :cond_1fe
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->market_cap:Ljava/lang/String;

    goto/16 :goto_27

    .line 250
    :cond_206
    const-string v1, "eps_curr_year"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 252
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_21c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22d

    .line 256
    :cond_21c
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_227

    .line 257
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EPSYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_227
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    goto/16 :goto_27

    .line 262
    :cond_22d
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    goto/16 :goto_27

    .line 266
    :cond_235
    const-string v1, "pe_ratio"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_264

    .line 268
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_24b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25c

    .line 272
    :cond_24b
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_256

    .line 273
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_EPSYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_256
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->pe_ratio:Ljava/lang/String;

    goto/16 :goto_27

    .line 278
    :cond_25c
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->pe_ratio:Ljava/lang/String;

    goto/16 :goto_27

    .line 282
    :cond_264
    const-string v1, "year_high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_293

    .line 284
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_27a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28b

    .line 288
    :cond_27a
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_285

    .line 289
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_HIGHYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_285
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_high:Ljava/lang/String;

    goto/16 :goto_27

    .line 294
    :cond_28b
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_high:Ljava/lang/String;

    goto/16 :goto_27

    .line 298
    :cond_293
    const-string v1, "year_low"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c2

    .line 300
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2a9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2ba

    .line 304
    :cond_2a9
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_2b4

    .line 305
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_LOWYEAR value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2b4
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_low:Ljava/lang/String;

    goto/16 :goto_27

    .line 310
    :cond_2ba
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_low:Ljava/lang/String;

    goto/16 :goto_27

    .line 313
    :cond_2c2
    const-string v1, "symbol"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_313

    .line 315
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
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

    .line 318
    if-eqz v0, :cond_2fa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30b

    .line 320
    :cond_2fa
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_305

    .line 321
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_SYMBOL value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_305
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->symbol:Ljava/lang/String;

    goto/16 :goto_27

    .line 326
    :cond_30b
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->symbol:Ljava/lang/String;

    goto/16 :goto_27

    .line 329
    :cond_313
    const-string v1, "details_url"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_342

    .line 331
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_329

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33a

    .line 335
    :cond_329
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v1, :cond_334

    .line 336
    const-string v1, ""

    const-string v2, "quoteParser Get LIST_DETAIL_URL value fail"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_334
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->details_url:Ljava/lang/String;

    goto/16 :goto_27

    .line 341
    :cond_33a
    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->ReplaceTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->details_url:Ljava/lang/String;

    goto/16 :goto_27

    .line 345
    :cond_342
    const-string v1, "quote"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 348
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->exchange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->price:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->change:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->chg_percent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_high:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->day_low:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->volume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->prev_close:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrevclose(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->open:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setOpen(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->market_cap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setMarketcap(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->pe_ratio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPeratio(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->eps_curr_year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setEpscurryear(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_high:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearhigh(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->year_low:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setYearlow(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->symbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->details_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLinkUrl(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->chg_percent:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->checkUpdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->resultStockList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 371
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    goto/16 :goto_27
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
    .line 411
    return-void
.end method

.method public getStockQuoteData()Ljava/util/ArrayList;
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
    .line 448
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->resultStockList:Ljava/util/ArrayList;

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
    .line 414
    return-void
.end method

.method public initStockQuoteData()V
    .registers 2

    .prologue
    .line 443
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 444
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
    .line 417
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 420
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
    .line 423
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
    .line 426
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
    .line 431
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 432
    const-string v0, "quote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 436
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
    .line 439
    return-void
.end method
