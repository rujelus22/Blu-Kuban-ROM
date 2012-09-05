.class Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;
.super Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
.source "YahooContentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

.field final synthetic val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

.field final synthetic val$param:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$param:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 458
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z
    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$000(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 520
    :cond_8
    :goto_8
    return-void

    .line 461
    :cond_9
    invoke-super/range {p0 .. p3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v9, 0xc8

    if-ne p1, v9, :cond_7d

    .line 465
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 466
    .local v7, mSPF:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 467
    .local v6, mSP:Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 470
    .local v8, mXR:Lorg/xml/sax/XMLReader;
    :try_start_16
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 471
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_60

    move-result-object v8

    .line 478
    :goto_1e
    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    .line 483
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;-><init>()V

    .line 484
    .local v3, handler:Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;
    invoke-interface {v8, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 488
    :try_start_2a
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 489
    .local v5, is:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 490
    .local v4, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->initStockGraphData()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_50

    .line 493
    :try_start_3b
    invoke-interface {v8, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 494
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;->getStockGraphData()Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move-result-object v2

    .line 495
    .local v2, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v10, 0x67

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$param:[Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_65

    .line 507
    :try_start_4c
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_8

    .line 510
    .end local v2           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .end local v4           #input:Lorg/xml/sax/InputSource;
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    :catch_50
    move-exception v1

    .line 512
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v10, 0x67

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$param:[Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 473
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;
    :catch_60
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 499
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #handler:Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;
    .restart local v4       #input:Lorg/xml/sax/InputSource;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    :catch_65
    move-exception v0

    .line 501
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v10, 0x67

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$param:[Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_78

    .line 507
    :try_start_74
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_8

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_78
    move-exception v9

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    throw v9
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_50

    .line 519
    .end local v3           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockGraphXmlparseHandler;
    .end local v4           #input:Lorg/xml/sax/InputSource;
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .end local v6           #mSP:Ljavax/xml/parsers/SAXParser;
    .end local v7           #mSPF:Ljavax/xml/parsers/SAXParserFactory;
    .end local v8           #mXR:Lorg/xml/sax/XMLReader;
    :cond_7d
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v10, 0x67

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;->val$param:[Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method
