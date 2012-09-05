.class public Lcom/sec/android/widgetapp/weatherclock/http/HttpClientThread;
.super Ljava/lang/Object;
.source "HttpClientThread.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "context"
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 54
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/sec/android/widgetapp/weatherclock/http/HttpClientThread;->sendRequest(Landroid/content/Context;ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static sendRequest(Landroid/content/Context;ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;
    .registers 27
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .parameter "headers"

    .prologue
    .line 77
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 79
    .local v6, hParam:Lorg/apache/http/params/HttpParams;
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 83
    new-instance v14, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v14}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 84
    .local v14, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v18, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v20

    const/16 v21, 0x50

    invoke-direct/range {v18 .. v21}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 85
    new-instance v18, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v20

    const/16 v21, 0x1bb

    invoke-direct/range {v18 .. v21}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    new-instance v12, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v12, v6, v14}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 88
    .local v12, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v12, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 92
    .local v7, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6e

    .line 94
    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v19

    const-string v20, "http"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    .local v9, httpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    const-string v19, "http.route.default-proxy"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 98
    .end local v9           #httpHost:Lorg/apache/http/HttpHost;
    :cond_6e
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    const-string v19, "http.protocol.cookie-policy"

    const-string v20, "rfc2109"

    invoke-interface/range {v18 .. v20}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 100
    const/4 v11, 0x0

    .line 101
    .local v11, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    const/16 v17, 0x0

    .line 103
    .local v17, uri:Ljava/net/URI;
    :try_start_7c
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_7f
    .catch Ljava/net/URISyntaxException; {:try_start_7c .. :try_end_7f} :catch_d4

    move-result-object v17

    .line 108
    :goto_80
    packed-switch p1, :pswitch_data_196

    .line 133
    :goto_83
    if-eqz v11, :cond_192

    .line 135
    const-string v18, "User-Agent"

    const-string v19, "SAMSUNG-Android"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v18, "Accept"

    const-string v19, "*,*/*"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v18, "Content-Type"

    const-string v19, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p4, :cond_b1

    .line 142
    invoke-virtual/range {p4 .. p4}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 146
    :cond_b1
    const/4 v13, 0x0

    .line 147
    .local v13, response:Lorg/apache/http/HttpResponse;
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 149
    .local v3, bContext:Lorg/apache/http/protocol/HttpContext;
    :try_start_b7
    invoke-virtual {v7, v11, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_ba
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b7 .. :try_end_ba} :catch_141
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_177

    move-result-object v13

    .line 159
    :goto_bb
    if-eqz v13, :cond_d3

    .line 161
    const-string v18, "Cache-Control"

    const-string v19, "no-cache, no-store, must-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v18, "Pragma"

    const-string v19, "no-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v3           #bContext:Lorg/apache/http/protocol/HttpContext;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :cond_d3
    :goto_d3
    return-object v13

    .line 104
    :catch_d4
    move-exception v5

    .line 105
    .local v5, e1:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_80

    .line 111
    .end local v5           #e1:Ljava/net/URISyntaxException;
    :pswitch_d9
    const-string v18, ""

    const-string v19, "http request by @@ GET @@"

    invoke-static/range {v18 .. v19}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 113
    .local v8, httpGet:Lorg/apache/http/client/methods/HttpGet;
    move-object v11, v8

    .line 114
    goto :goto_83

    .line 116
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :pswitch_e9
    const-string v18, ""

    const-string v19, "http request by @@ POST @@"

    invoke-static/range {v18 .. v19}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 118
    .local v10, httpPost:Lorg/apache/http/client/methods/HttpPost;
    move-object v11, v10

    .line 120
    const/4 v15, 0x0

    .line 122
    .local v15, strEntity:Lorg/apache/http/entity/StringEntity;
    :try_start_f9
    new-instance v16, Lorg/apache/http/entity/StringEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f9 .. :try_end_106} :catch_10d
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_106} :catch_127

    .end local v15           #strEntity:Lorg/apache/http/entity/StringEntity;
    .local v16, strEntity:Lorg/apache/http/entity/StringEntity;
    move-object/from16 v15, v16

    .line 130
    .end local v16           #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local v15       #strEntity:Lorg/apache/http/entity/StringEntity;
    :goto_108
    invoke-virtual {v10, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_83

    .line 124
    :catch_10d
    move-exception v4

    .line 125
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ADVHTTP UnsupportedEncodingException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_108

    .line 127
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catch_127
    move-exception v4

    .line 128
    .local v4, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ADVHTTP Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_108

    .line 150
    .end local v4           #e:Ljava/lang/Exception;
    .end local v10           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #bContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    :catch_141
    move-exception v4

    .line 151
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ADVHTTP ClientProtocolException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 152
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_15c
    move-exception v4

    .line 153
    .local v4, e:Ljava/io/IOException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ADVHTTP IOException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 154
    .end local v4           #e:Ljava/io/IOException;
    :catch_177
    move-exception v4

    .line 155
    .local v4, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ADVHTTP Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto/16 :goto_bb

    .line 167
    .end local v3           #bContext:Lorg/apache/http/protocol/HttpContext;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    :cond_192
    const/4 v13, 0x0

    goto/16 :goto_d3

    .line 108
    nop

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_e9
    .end packed-switch
.end method
