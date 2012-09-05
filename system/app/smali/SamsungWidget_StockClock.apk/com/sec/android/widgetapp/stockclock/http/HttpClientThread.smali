.class public Lcom/sec/android/widgetapp/stockclock/http/HttpClientThread;
.super Ljava/lang/Object;
.source "HttpClientThread.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "context"
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/sec/android/widgetapp/stockclock/http/HttpClientThread;->sendRequest(Landroid/content/Context;ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static getClientInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, appName:Ljava/lang/String;
    const-string v3, ""

    .line 181
    .local v3, version:Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 182
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1b} :catch_3f

    .line 188
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vendor=\"Samsung\"; model=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"; version=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 183
    :catch_3f
    move-exception v1

    .line 186
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method private static getDeviceInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make=\"Samsung\"; model=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; os=\"android\"; osver=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sendRequest(Landroid/content/Context;ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;
    .registers 25
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .parameter "headers"

    .prologue
    .line 58
    const/4 v12, 0x0

    .line 60
    .local v12, response:Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 61
    .local v6, hParam:Lorg/apache/http/params/HttpParams;
    const/16 v17, 0x4e20

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    const/16 v17, 0x4e20

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 67
    .local v7, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_41

    .line 69
    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p0 .. p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v18

    const-string v19, "http"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .local v9, httpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.route.default-proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 73
    .end local v9           #httpHost:Lorg/apache/http/HttpHost;
    :cond_41
    const/4 v11, 0x0

    .line 74
    .local v11, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v15, 0x0

    .line 77
    .local v15, uri:Ljava/net/URI;
    :try_start_43
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_46
    .catch Ljava/net/URISyntaxException; {:try_start_43 .. :try_end_46} :catch_4f

    move-result-object v15

    .line 86
    packed-switch p1, :pswitch_data_194

    .line 113
    :goto_4a
    if-nez v11, :cond_7e

    .line 115
    const/16 v17, 0x0

    .line 173
    :goto_4e
    return-object v17

    .line 79
    :catch_4f
    move-exception v5

    .line 82
    .local v5, e1:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 83
    const/16 v17, 0x0

    goto :goto_4e

    .line 89
    .end local v5           #e1:Ljava/net/URISyntaxException;
    :pswitch_56
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 90
    .local v8, httpGet:Lorg/apache/http/client/methods/HttpGet;
    move-object v11, v8

    .line 91
    goto :goto_4a

    .line 93
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :pswitch_5d
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 94
    .local v10, httpPost:Lorg/apache/http/client/methods/HttpPost;
    move-object v11, v10

    .line 96
    const/4 v13, 0x0

    .line 99
    .local v13, strEntity:Lorg/apache/http/entity/StringEntity;
    :try_start_64
    new-instance v14, Lorg/apache/http/entity/StringEntity;

    const-string v17, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_6f} :catch_74
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_79

    .end local v13           #strEntity:Lorg/apache/http/entity/StringEntity;
    .local v14, strEntity:Lorg/apache/http/entity/StringEntity;
    move-object v13, v14

    .line 109
    .end local v14           #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local v13       #strEntity:Lorg/apache/http/entity/StringEntity;
    :goto_70
    invoke-virtual {v10, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_4a

    .line 101
    :catch_74
    move-exception v4

    .line 103
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_70

    .line 105
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catch_79
    move-exception v4

    .line 107
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    .line 118
    .end local v4           #e:Ljava/lang/Exception;
    .end local v10           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #strEntity:Lorg/apache/http/entity/StringEntity;
    :cond_7e
    const-string v17, "User-Agent"

    const-string v18, "SAMSUNG-Android"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v17, "Accept"

    const-string v18, "*,*/*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v17, "Content-Type"

    const-string v18, "text/xml;charset=utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz p4, :cond_aa

    .line 124
    invoke-virtual/range {p4 .. p4}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 128
    :cond_aa
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->getYahooUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_129

    .line 129
    const-string v17, "X-Client-UUID"

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->getYahooUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Yahoo UUID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->getYahooUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_d9
    const-string v17, "X-Client-Info"

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpClientThread;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v17, "X-Device-Info"

    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/http/HttpClientThread;->getDeviceInfo()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v17, "X-Device-User-Agent"

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Yahoo X-Device-User-Agent : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 150
    .local v3, bContext:Lorg/apache/http/protocol/HttpContext;
    :try_start_121
    invoke-virtual {v7, v11, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_124
    .catch Ljava/net/SocketTimeoutException; {:try_start_121 .. :try_end_124} :catch_17b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_121 .. :try_end_124} :catch_181
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_187
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_18d

    move-result-object v12

    :goto_125
    move-object/from16 v17, v12

    .line 173
    goto/16 :goto_4e

    .line 132
    .end local v3           #bContext:Lorg/apache/http/protocol/HttpContext;
    :cond_129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, uuid:Ljava/lang/String;
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Yahoo UUID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->setYahooUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    const-string v17, "X-Client-UUID"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Yahoo UUID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->getYahooUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 152
    .end local v16           #uuid:Ljava/lang/String;
    .restart local v3       #bContext:Lorg/apache/http/protocol/HttpContext;
    :catch_17b
    move-exception v4

    .line 154
    .local v4, e:Ljava/net/SocketTimeoutException;
    const/4 v12, 0x0

    .line 155
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_125

    .line 157
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :catch_181
    move-exception v4

    .line 159
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    const/4 v12, 0x0

    .line 160
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_125

    .line 162
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_187
    move-exception v4

    .line 164
    .local v4, e:Ljava/io/IOException;
    const/4 v12, 0x0

    .line 165
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_125

    .line 167
    .end local v4           #e:Ljava/io/IOException;
    :catch_18d
    move-exception v4

    .line 169
    .local v4, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 170
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_125

    .line 86
    nop

    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_56
        :pswitch_5d
    .end packed-switch
.end method
