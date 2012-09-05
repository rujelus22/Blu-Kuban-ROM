.class Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;
.super Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
.source "YahooContentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

.field final synthetic val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

.field final synthetic val$stockName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$stockName:Ljava/lang/String;

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
    .line 330
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSearch - onReceive() - responeseCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSearch - onReceive() - responseStatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSearch - onReceive() - responseBody : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$000(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 402
    :cond_58
    :goto_58
    return-void

    .line 335
    :cond_59
    invoke-super/range {p0 .. p3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    invoke-static/range {p3 .. p3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->removeHTMLTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$102(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$200(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$100(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/Util;->replaceLatinHTMLTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$102(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    const/16 v8, 0xc8

    if-ne p1, v8, :cond_ec

    .line 344
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 345
    .local v6, mSPF:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .line 346
    .local v5, mSP:Ljavax/xml/parsers/SAXParser;
    const/4 v7, 0x0

    .line 349
    .local v7, mXR:Lorg/xml/sax/XMLReader;
    :try_start_84
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_ce

    move-result-object v7

    .line 357
    :goto_8c
    if-eqz v5, :cond_58

    if-eqz v7, :cond_58

    .line 362
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;-><init>()V

    .line 363
    .local v2, handler:Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 367
    :try_start_98
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 368
    .local v4, is:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 369
    .local v3, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->initStockSearchData()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a9} :catch_be

    .line 372
    :try_start_a9
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 373
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x65

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$stockName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;->getStockSearchData()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_ba
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ba} :catch_d3

    .line 386
    :try_start_ba
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_58

    .line 389
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_be
    move-exception v1

    .line 391
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x65

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$stockName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_58

    .line 352
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;
    :catch_ce
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c

    .line 378
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #handler:Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;
    .restart local v3       #input:Lorg/xml/sax/InputSource;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_d3
    move-exception v0

    .line 380
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_d4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x65

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$stockName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e2
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_e7

    .line 386
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto/16 :goto_58

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_e7
    move-exception v8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    throw v8
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ec} :catch_be

    .line 398
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockSearchXmlparseHandler;
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .end local v5           #mSP:Ljavax/xml/parsers/SAXParser;
    .end local v6           #mSPF:Ljavax/xml/parsers/SAXParserFactory;
    .end local v7           #mXR:Lorg/xml/sax/XMLReader;
    :cond_ec
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x65

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;->val$stockName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_58
.end method
