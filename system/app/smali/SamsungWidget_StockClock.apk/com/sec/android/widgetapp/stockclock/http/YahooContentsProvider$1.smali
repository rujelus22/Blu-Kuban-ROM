.class Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;
.super Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
.source "YahooContentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

.field final synthetic val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

.field final synthetic val$symbolArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$symbolArray:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 160
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$000(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 223
    :cond_8
    :goto_8
    return-void

    .line 162
    :cond_9
    invoke-super/range {p0 .. p3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v8, 0xc8

    if-ne p1, v8, :cond_7d

    .line 166
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 167
    .local v6, mSPF:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .line 168
    .local v5, mSP:Ljavax/xml/parsers/SAXParser;
    const/4 v7, 0x0

    .line 172
    .local v7, mXR:Lorg/xml/sax/XMLReader;
    :try_start_16
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 173
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_60

    move-result-object v7

    .line 180
    :goto_1e
    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    .line 185
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;-><init>()V

    .line 186
    .local v2, handler:Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 190
    :try_start_2a
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .local v4, is:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v3, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->initStockQuoteData()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_50

    .line 195
    :try_start_3b
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 196
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x64

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$symbolArray:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;->getStockQuoteData()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_65

    .line 209
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_8

    .line 212
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_50
    move-exception v1

    .line 214
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x64

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$symbolArray:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 175
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;
    :catch_60
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #handler:Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;
    .restart local v3       #input:Lorg/xml/sax/InputSource;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_65
    move-exception v0

    .line 203
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x64

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$symbolArray:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_78

    .line 209
    :try_start_74
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_8

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_78
    move-exception v8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    throw v8
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_50

    .line 222
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockQuoteXmlparseHandler;
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .end local v5           #mSP:Ljavax/xml/parsers/SAXParser;
    .end local v6           #mSPF:Ljavax/xml/parsers/SAXParserFactory;
    .end local v7           #mXR:Lorg/xml/sax/XMLReader;
    :cond_7d
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x64

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;->val$symbolArray:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method
