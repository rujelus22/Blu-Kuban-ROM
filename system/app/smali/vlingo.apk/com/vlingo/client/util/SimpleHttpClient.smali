.class public Lcom/vlingo/client/util/SimpleHttpClient;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"


# static fields
.field public static final MAX_TOTAL_CONNECTIONS:I = 0x5

.field public static final REQUEST_TIMEOUT:I = 0x3a98

.field public static final SOCKET_TIMEOUT:I = 0x3a98


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v4, 0x3a98

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 52
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 53
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    const/4 v3, 0x5

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 58
    .local v2, schReg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 61
    .local v0, conMgr:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/vlingo/client/util/SimpleHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    return-void
.end method


# virtual methods
.method public getDataAsString([BLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "data"
    .parameter "encoding"

    .prologue
    .line 188
    const-string v0, ""

    .line 190
    .local v0, result:Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 191
    :try_start_4
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a

    .line 198
    .restart local v0       #result:Ljava/lang/String;
    :cond_9
    :goto_9
    return-object v0

    .line 194
    .end local v0           #result:Ljava/lang/String;
    :catch_a
    move-exception v1

    .line 196
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_9
.end method

.method public postVLJSONRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v10, 0x0

    .line 70
    .local v10, response:Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 72
    .local v3, entity:Lorg/apache/http/HttpEntity;
    :try_start_3
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_be

    .line 73
    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    .local v9, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_a
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 74
    .local v5, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "application/json"

    invoke-static {v5, v12}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->setProtocolHeader(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-result-object v12

    invoke-static {}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v13

    invoke-static {v5, v12, v13}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addStandardVlingoHttpHeaders(Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 76
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 77
    .local v2, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_23
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_45

    .line 78
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v7, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_23

    .line 92
    .end local v2           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v5           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #key:Ljava/lang/String;
    :catch_39
    move-exception v4

    move-object v8, v9

    .line 93
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    .local v4, ex:Ljava/lang/Exception;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    :goto_3b
    if-eqz v4, :cond_3d

    .line 101
    :cond_3d
    if-eqz v3, :cond_43

    :try_start_3f
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_9d

    const/4 v3, 0x0

    .line 105
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_43
    :goto_43
    const/4 v11, 0x0

    :goto_44
    return-object v11

    .line 81
    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v5       #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_45
    :try_start_45
    const-string v12, "Connection"

    const-string v13, "keep-alive"

    invoke-virtual {v9, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v13, "UTF8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v9, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 83
    iget-object v12, p0, Lcom/vlingo/client/util/SimpleHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 84
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_89

    .line 86
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 87
    .local v6, in:Ljava/io/InputStream;
    invoke-static {v6}, Lcom/vlingo/client/core/http/HttpUtil;->readData(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 88
    .local v1, data:[B
    const-string v12, "UTF-8"

    invoke-virtual {p0, v1, v12}, Lcom/vlingo/client/util/SimpleHttpClient;->getDataAsString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_45 .. :try_end_75} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_75} :catch_39

    move-result-object v11

    .line 101
    .local v11, responseStr:Ljava/lang/String;
    if-eqz v3, :cond_7c

    :try_start_78
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7e

    const/4 v3, 0x0

    :cond_7c
    :goto_7c
    move-object v8, v9

    .line 103
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_44

    .line 101
    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_7e
    move-exception v4

    .line 102
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v12, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 101
    .end local v1           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v11           #responseStr:Ljava/lang/String;
    :cond_89
    if-eqz v3, :cond_8f

    :try_start_8b
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_91

    const/4 v3, 0x0

    :cond_8f
    move-object v8, v9

    .line 103
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_43

    .line 101
    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_91
    move-exception v4

    .line 102
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v12, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 104
    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_43

    .line 101
    .end local v2           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v5           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_9d
    move-exception v4

    .line 102
    const-string v12, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 101
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_a8
    move-exception v12

    :goto_a9
    if-eqz v3, :cond_af

    :try_start_ab
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_b0

    const/4 v3, 0x0

    .line 103
    :cond_af
    :goto_af
    throw v12

    .line 101
    :catch_b0
    move-exception v4

    .line 102
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v13, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 101
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpPost;
    :catchall_bb
    move-exception v12

    move-object v8, v9

    .end local v9           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_a9

    .line 92
    :catch_be
    move-exception v4

    goto/16 :goto_3b
.end method
