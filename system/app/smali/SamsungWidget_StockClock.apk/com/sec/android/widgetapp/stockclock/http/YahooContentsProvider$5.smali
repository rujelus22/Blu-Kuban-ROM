.class Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;
.super Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
.source "YahooContentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestIndices([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

.field final synthetic val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

.field final synthetic val$symbol:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$symbol:[Ljava/lang/String;

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
    .line 741
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z
    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$000(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 808
    :cond_8
    :goto_8
    return-void

    .line 743
    :cond_9
    invoke-super/range {p0 .. p3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    invoke-static/range {p3 .. p3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->removeHTMLTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$102(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$200(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->this$0:Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$100(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/Util;->replaceLatinHTMLTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->access$102(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    const/16 v8, 0xc8

    if-ne p1, v8, :cond_9c

    .line 753
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 754
    .local v6, mSPF:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .line 755
    .local v5, mSP:Ljavax/xml/parsers/SAXParser;
    const/4 v7, 0x0

    .line 758
    .local v7, mXR:Lorg/xml/sax/XMLReader;
    :try_start_34
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 759
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_7e

    move-result-object v7

    .line 766
    :goto_3c
    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    .line 771
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;-><init>()V

    .line 772
    .local v2, handler:Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 776
    :try_start_48
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 777
    .local v4, is:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 778
    .local v3, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->initIndicesSearchData()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_6e

    .line 781
    :try_start_59
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 782
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x69

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$symbol:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;->getIndiceSearchData()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6a} :catch_83

    .line 794
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_8

    .line 797
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_6e
    move-exception v1

    .line 799
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x69

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$symbol:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 761
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;
    :catch_7e
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 786
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #handler:Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;
    .restart local v3       #input:Lorg/xml/sax/InputSource;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_83
    move-exception v0

    .line 788
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x69

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$symbol:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_97

    .line 794
    :try_start_92
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto/16 :goto_8

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_97
    move-exception v8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    throw v8
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9c} :catch_6e

    .line 806
    .end local v2           #handler:Lcom/sec/android/widgetapp/stockclock/http/StockIndicesXmlparseHandler;
    .end local v3           #input:Lorg/xml/sax/InputSource;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .end local v5           #mSP:Ljavax/xml/parsers/SAXParser;
    .end local v6           #mSPF:Ljavax/xml/parsers/SAXParserFactory;
    .end local v7           #mXR:Lorg/xml/sax/XMLReader;
    :cond_9c
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    const/16 v9, 0x69

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;->val$symbol:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8
.end method
