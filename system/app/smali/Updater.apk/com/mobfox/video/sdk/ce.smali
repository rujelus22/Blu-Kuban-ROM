.class public final Lcom/mobfox/video/sdk/ce;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/ce;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/mobfox/video/sdk/cl;
    .registers 6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/ck;

    invoke-direct {v1}, Lcom/mobfox/video/sdk/ck;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/ce;->a:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v2, "ISO-8859-1"

    invoke-virtual {v3, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, v1, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v0

    new-instance v1, Lcom/mobfox/video/sdk/cg;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse Response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/io/InputStream;)Lcom/mobfox/video/sdk/cl;
    .registers 7

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/ck;

    invoke-direct {v1}, Lcom/mobfox/video/sdk/ck;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    sget-boolean v2, Lcom/mobfox/video/sdk/i;->a:Z

    if-eqz v2, :cond_4b

    invoke-static {p0}, Lcom/mobfox/video/sdk/ce;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad RequestPerform HTTP Response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v2, "ISO-8859-1"

    invoke-virtual {v3, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, v1, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;

    :goto_4a
    return-object v0

    :cond_4b
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, v1, Lcom/mobfox/video/sdk/ck;->a:Lcom/mobfox/video/sdk/cl;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_4a

    :catch_5b
    move-exception v0

    new-instance v1, Lcom/mobfox/video/sdk/cg;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse Response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v0, ""

    goto :goto_f
.end method


# virtual methods
.method public final a(Lcom/mobfox/video/sdk/cf;)Lcom/mobfox/video/sdk/cl;
    .registers 7

    const/16 v4, 0x3a98

    iget-object v0, p0, Lcom/mobfox/video/sdk/ce;->a:Ljava/lang/String;

    if-nez v0, :cond_94

    invoke-virtual {p1}, Lcom/mobfox/video/sdk/cf;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mobfox/video/sdk/i;->a:Z

    if-eqz v1, :cond_22

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad RequestPerform HTTP Get Url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mobfox/video/sdk/cf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_45
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_62

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/ce;->a(Ljava/io/InputStream;)Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    :goto_61
    return-object v0

    :cond_62
    new-instance v0, Lcom/mobfox/video/sdk/cg;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error. Response code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catch Lcom/mobfox/video/sdk/cg; {:try_start_45 .. :try_end_77} :catch_77
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45 .. :try_end_77} :catch_79
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_77} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_77} :catch_8b

    :catch_77
    move-exception v0

    throw v0

    :catch_79
    move-exception v0

    new-instance v1, Lcom/mobfox/video/sdk/cg;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_82
    move-exception v0

    new-instance v1, Lcom/mobfox/video/sdk/cg;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Lcom/mobfox/video/sdk/cg;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_94
    invoke-direct {p0}, Lcom/mobfox/video/sdk/ce;->a()Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    goto :goto_61
.end method
