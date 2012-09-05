.class public final Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;
.super Ljava/lang/Object;
.source "BoxHTTPManager.java"


# static fields
.field private static instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager; = null

.field protected static final logTag:Ljava/lang/String; = "BoxExternalAPI"


# instance fields
.field private config:Ljava/util/Properties;

.field private hc:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method private constructor <init>()V
    .registers 8

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->loadConfigProperties()V

    .line 62
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;-><init>()V

    .line 65
    .local v1, connectionManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 66
    const-string v6, "box4j.config.httpclient.MaxConnectionsPerHost"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, maxConPerHost:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 67
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 70
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 71
    const-string v6, "box4j.config.httpclient.MaxTotalConnections"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, maxTotalCons:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 72
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 75
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 76
    const-string v6, "box4j.config.httpclient.ConnectionTimeout"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, connTimeout:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 77
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 80
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 81
    const-string v6, "box4j.config.httpclient.SoConnectionTimeout"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, soConnTimeout:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 82
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 85
    new-instance v5, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v5, v1}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    iput-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    .line 86
    return-void
.end method

.method public static getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;-><init>()V

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    .line 160
    :cond_b
    sget-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    return-object v0
.end method

.method private loadConfigProperties()V
    .registers 8

    .prologue
    .line 128
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 131
    :try_start_7
    const-string v5, "user.dir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, userDir:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 133
    const-string v6, "box4j-config.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, propertyPath:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 135
    .local v2, in:Ljava/io/InputStream;
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_35} :catch_57

    .line 149
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #propertyPath:Ljava/lang/String;
    .end local v4           #userDir:Ljava/lang/String;
    :goto_35
    return-void

    .line 136
    :catch_36
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "box4j-config.properties not found in classpath, use box4j-config-default.properties."

    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 139
    const-string v6, "box4j-config-default.properties"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 141
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_48
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_35

    .line 142
    :catch_4e
    move-exception v1

    .line 143
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "io exception happened when loading box4j-config-default.properties"

    invoke-static {v5, v6, v0}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 145
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    :catch_57
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "io exception occured when read box4j-config.properties"

    invoke-static {v5, v6, v0}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 13
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, result:Lorg/dom4j/Document;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 258
    .local v5, t1:J
    const-string v7, "BoxExternalAPI"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 259
    const-string v7, "BoxExternalAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "##### doGet-start  #####, url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_22
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v7, "yes"

    iget-object v8, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 263
    const-string v9, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 264
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    const-string v8, "ignoreCookies"

    invoke-virtual {v7, v8}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 267
    :cond_40
    :try_start_40
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v7, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 268
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    .line 270
    .local v1, in:Ljava/io/InputStream;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 271
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v4, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v2, v4}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_90

    move-result-object v3

    .line 276
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 278
    const-string v7, "BoxExternalAPI"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 279
    const-string v7, "BoxExternalAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "##### doGet-end    #####, used time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms,response=\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_8f
    return-object v3

    .line 275
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #reader:Lorg/dom4j/io/SAXReader;
    .end local v4           #source:Lorg/xml/sax/InputSource;
    :catchall_90
    move-exception v7

    .line 276
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 277
    throw v7
.end method

.method public doGetByteArry(Ljava/lang/String;)[B
    .registers 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 296
    const/4 v1, 0x0

    check-cast v1, [B

    .line 297
    .local v1, result:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 298
    .local v2, t1:J
    const-string v4, "BoxExternalAPI"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 299
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##### doGet-start  #####, url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_24
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v4, "yes"

    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 303
    const-string v6, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 304
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    const-string v5, "ignoreCookies"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 307
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v4, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 308
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBody()[B
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_7b

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 312
    const-string v4, "BoxExternalAPI"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 313
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##### doGet-end    #####, used time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    const-string v6, " ms,response is a file, size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_7a
    return-object v1

    .line 309
    :catchall_7b
    move-exception v4

    .line 310
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 311
    throw v4
.end method

.method public doGetFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 16
    .parameter "url"
    .parameter "inFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x800

    const/4 v11, 0x3

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 333
    .local v6, t1:J
    const-string v8, "BoxExternalAPI"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 334
    const-string v8, "BoxExternalAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "##### doGet-start  #####, url="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_23
    const/4 v5, 0x0

    .line 337
    .local v5, responseBodyInputStream:Ljava/io/InputStream;
    new-instance v3, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v3, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v8, "yes"

    iget-object v9, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 339
    const-string v10, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 340
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    const-string v9, "ignoreCookies"

    invoke-virtual {v8, v9}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 343
    :cond_42
    :try_start_42
    iget-object v8, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v8, v3}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 344
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 345
    const/16 v1, 0x800

    .line 346
    .local v1, bufferSize:I
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 347
    .local v2, fout:Ljava/io/FileOutputStream;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 348
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 349
    .local v4, readCount:I
    if-eqz v5, :cond_60

    .line 350
    :goto_59
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_8e

    .line 359
    :cond_60
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_95

    .line 361
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 363
    const-string v8, "BoxExternalAPI"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 364
    const-string v8, "BoxExternalAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "##### doGet-end    #####, used time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 366
    const-string v10, " ms,response=[InputStream]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_8d
    return-object p2

    .line 352
    :cond_8e
    if-ge v4, v12, :cond_9a

    .line 353
    const/4 v8, 0x0

    :try_start_91
    invoke-virtual {v2, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_59

    .line 360
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v4           #readCount:I
    :catchall_95
    move-exception v8

    .line 361
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 362
    throw v8

    .line 355
    .restart local v0       #buffer:[B
    .restart local v1       #bufferSize:I
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #readCount:I
    :cond_9a
    :try_start_9a
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_95

    goto :goto_59
.end method

.method public doMultipartPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 19
    .parameter "url"
    .parameter "fileList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 431
    .local v10, t1:J
    const-string v12, "BoxExternalAPI"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 432
    const-string v12, "BoxExternalAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "doPost, start, url="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_23
    new-instance v5, Lorg/apache/commons/httpclient/methods/PostMethod;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 435
    .local v5, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 436
    .local v2, fileCounts:I
    new-array v6, v2, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 437
    .local v6, parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_31
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lt v4, v12, :cond_8a

    .line 442
    new-instance v7, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    .line 443
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v12

    .line 442
    invoke-direct {v7, v6, v12}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    .line 444
    .local v7, requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    invoke-virtual {v5, v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v12, v5}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 446
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBody()[B

    move-result-object v9

    .line 447
    .local v9, responseBody:[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 448
    .local v8, response:Ljava/lang/String;
    const-string v12, "BoxExternalAPI"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_89

    .line 449
    const-string v12, "BoxExternalAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "doPost, end, used time: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 449
    invoke-static {v12, v13}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v12, "BoxExternalAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "doPost, end, response=\n"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_89
    return-object v8

    .line 438
    .end local v7           #requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .end local v8           #response:Ljava/lang/String;
    .end local v9           #responseBody:[B
    :cond_8a
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 439
    .local v1, f:Ljava/io/File;
    new-instance v3, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Filedata"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 440
    .local v3, filePart:Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    aput-object v3, v6, v4

    .line 437
    add-int/lit8 v4, v4, 0x1

    goto :goto_31
.end method

.method public doMultipartPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 23
    .parameter "url"
    .parameter "filesHashMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 385
    .local v14, t1:J
    const-string v16, "BoxExternalAPI"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_26

    .line 386
    const-string v16, "BoxExternalAPI"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "doPost, start, url="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_26
    new-instance v9, Lorg/apache/commons/httpclient/methods/PostMethod;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 389
    .local v9, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v4

    .line 390
    .local v4, fileCounts:I
    new-array v10, v4, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 391
    .local v10, parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 392
    .local v7, it:Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 393
    .local v6, i:I
    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_9f

    .line 404
    new-instance v11, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    .line 405
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v16

    .line 404
    move-object/from16 v0, v16

    invoke-direct {v11, v10, v0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    .line 406
    .local v11, requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    invoke-virtual {v9, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 408
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBody()[B

    move-result-object v13

    .line 409
    .local v13, responseBody:[B
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 410
    .local v12, response:Ljava/lang/String;
    const-string v16, "BoxExternalAPI"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_9e

    .line 411
    const-string v16, "BoxExternalAPI"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "doPost, end, used time: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 411
    invoke-static/range {v16 .. v17}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v16, "BoxExternalAPI"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "doPost, end, response=\n"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_9e
    return-object v12

    .line 394
    .end local v11           #requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .end local v12           #response:Ljava/lang/String;
    .end local v13           #responseBody:[B
    :cond_9f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 395
    .local v8, key:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 396
    .local v3, data:[B
    new-instance v2, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;

    invoke-direct {v2, v8, v3}, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    .line 398
    .local v2, byteArrayPartSource:Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;
    new-instance v5, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Filedata"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V

    .line 400
    .local v5, filePart:Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    aput-object v5, v10, v6

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3c
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "url"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, t1:J
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 177
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-start #####, url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 178
    const-string v7, ", postData=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_2b
    const/4 v1, 0x0

    .line 181
    .local v1, response:Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const-string v5, "yes"

    iget-object v6, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 183
    const-string v7, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 184
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    const-string v6, "ignoreCookies"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 187
    :cond_4a
    :try_start_4a
    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "data"

    invoke-direct {v4, v5, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v4, type:Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/commons/httpclient/NameValuePair;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 189
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v5, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 190
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_98

    move-result-object v1

    .line 192
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 194
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 195
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-end   #####, used time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms,response=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 197
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_97
    return-object v1

    .line 191
    .end local v4           #type:Lorg/apache/commons/httpclient/NameValuePair;
    :catchall_98
    move-exception v5

    .line 192
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 193
    throw v5
.end method

.method public doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "url"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, t1:J
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 216
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-start #####, url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 217
    const-string v7, ", postData=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2b
    const/4 v1, 0x0

    .line 220
    .local v1, response:Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const-string v5, "yes"

    iget-object v6, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 222
    const-string v7, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 223
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    const-string v6, "ignoreCookies"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 228
    :cond_4a
    :try_start_4a
    new-instance v4, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    invoke-direct {v4, p2}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, xmlRequestEntity:Lorg/apache/commons/httpclient/methods/StringRequestEntity;
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 231
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v5, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 232
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_90

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 236
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 237
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-end   #####, used time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms,response=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 239
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-static {v5, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_8f
    return-object v1

    .line 233
    .end local v4           #xmlRequestEntity:Lorg/apache/commons/httpclient/methods/StringRequestEntity;
    :catchall_90
    move-exception v5

    .line 234
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 235
    throw v5
.end method

.method public getConfig()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    return-object v0
.end method

.method public setConfig(Ljava/util/Properties;)V
    .registers 9
    .parameter "config"

    .prologue
    .line 100
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 101
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    .line 102
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v1

    .line 104
    .local v1, connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    const-string v5, "box4j.config.httpclient.MaxConnectionsPerHost"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, maxConPerHost:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 105
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 109
    const-string v5, "box4j.config.httpclient.MaxTotalConnections"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, maxTotalCons:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 110
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 114
    const-string v5, "box4j.config.httpclient.ConnectionTimeout"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, connTimeout:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 115
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 119
    const-string v5, "box4j.config.httpclient.SoConnectionTimeout"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, soConnTimeout:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 120
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 122
    return-void
.end method
