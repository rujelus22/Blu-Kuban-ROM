.class public Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"


# instance fields
.field context:Landroid/content/Context;

.field responseOnThread:Z

.field private stamp:J

.field statusCode:I

.field strResult:Ljava/lang/String;

.field strStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->responseOnThread:Z

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    .line 37
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJ)V
    .registers 7
    .parameter "context"
    .parameter "responseOnThread"
    .parameter "stamp"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->responseOnThread:Z

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    .line 48
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 49
    iput-boolean p2, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->responseOnThread:Z

    .line 50
    iput-wide p3, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    return-wide v0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 362
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 364
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 365
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method


# virtual methods
.method public get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;
    .registers 13
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 281
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;I)V

    .line 299
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-object v0
.end method

.method public processResult(Landroid/os/Message;)V
    .registers 20
    .parameter "msg"

    .prologue
    .line 59
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;

    .line 60
    .local v2, httpResponseHandler:Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 61
    .local v14, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v14, :cond_1e9

    .line 63
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 65
    .local v17, responseResultEntity:Lorg/apache/http/HttpEntity;
    if-eqz v17, :cond_1c0

    .line 69
    :try_start_12
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->statusCode:I

    .line 70
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    .line 72
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_132

    .line 73
    const-string v3, "Content-Encoding"

    invoke-interface {v14, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 75
    .local v11, contentEncoding:Lorg/apache/http/Header;
    if-eqz v11, :cond_e2

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 76
    const-string v3, ""

    const-string v4, "using gzip"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v15, Ljava/util/zip/GZIPInputStream;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v15, inStream:Ljava/io/InputStream;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v16, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 82
    .local v9, a:I
    :goto_60
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v3, -0x1

    if-eq v9, v3, :cond_a2

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6c
    .catchall {:try_start_12 .. :try_end_6c} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_12 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6c} :catch_f6

    goto :goto_60

    .line 129
    .end local v9           #a:I
    .end local v11           #contentEncoding:Lorg/apache/http/Header;
    .end local v15           #inStream:Ljava/io/InputStream;
    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_6d
    move-exception v12

    .line 132
    .local v12, e:Landroid/net/ParseException;
    :try_start_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADVHTTP ParseException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_147

    if-eqz v3, :cond_9c

    .line 138
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_147
    .catch Ljava/lang/ClassCastException; {:try_start_8a .. :try_end_9c} :catch_197

    .line 185
    :cond_9c
    :goto_9c
    if-eqz v17, :cond_a1

    .line 189
    :try_start_9e
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_1a6

    .line 247
    .end local v12           #e:Landroid/net/ParseException;
    .end local v17           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_a1
    :goto_a1
    return-void

    .line 86
    .restart local v9       #a:I
    .restart local v11       #contentEncoding:Lorg/apache/http/Header;
    .restart local v15       #inStream:Ljava/io/InputStream;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_a2
    if-eqz v15, :cond_a7

    .line 87
    :try_start_a4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 90
    :cond_a7
    if-eqz v16, :cond_b4

    .line 91
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    .end local v9           #a:I
    .end local v11           #contentEncoding:Lorg/apache/http/Header;
    .end local v15           #inStream:Ljava/io/InputStream;
    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_b4
    :goto_b4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->responseOnThread:Z

    if-eqz v3, :cond_167

    .line 105
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_14e

    .line 106
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->statusCode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_a4 .. :try_end_d7} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_a4 .. :try_end_d7} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d7} :catch_f6

    .line 185
    :cond_d7
    :goto_d7
    if-eqz v17, :cond_a1

    .line 189
    :try_start_d9
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_a1

    .line 191
    :catch_dd
    move-exception v12

    .line 193
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a1

    .line 95
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v11       #contentEncoding:Lorg/apache/http/Header;
    :cond_e2
    :try_start_e2
    const-string v3, ""

    const-string v4, "don\'t using gzip"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_e2 .. :try_end_f5} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f5} :catch_f6

    goto :goto_b4

    .line 156
    .end local v11           #contentEncoding:Lorg/apache/http/Header;
    :catch_f6
    move-exception v12

    .line 159
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADVHTTP Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_111
    .catchall {:try_start_f7 .. :try_end_111} :catchall_147

    if-eqz v3, :cond_125

    .line 165
    :try_start_113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_125
    .catchall {:try_start_113 .. :try_end_125} :catchall_147
    .catch Ljava/lang/ClassCastException; {:try_start_113 .. :try_end_125} :catch_1ac

    .line 185
    :cond_125
    :goto_125
    if-eqz v17, :cond_a1

    .line 189
    :try_start_127
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12c

    goto/16 :goto_a1

    .line 191
    :catch_12c
    move-exception v12

    .line 193
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a1

    .line 99
    .end local v12           #e:Ljava/lang/Exception;
    :cond_132
    :try_start_132
    const-string v3, ""

    const-string v4, "Rsp Cd is not 200"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v3, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;
    :try_end_145
    .catchall {:try_start_132 .. :try_end_145} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_132 .. :try_end_145} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_145} :catch_f6

    goto/16 :goto_b4

    .line 185
    :catchall_147
    move-exception v3

    if-eqz v17, :cond_14d

    .line 189
    :try_start_14a
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_1bb

    .line 194
    :cond_14d
    :goto_14d
    throw v3

    .line 108
    :cond_14e
    :try_start_14e
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->statusCode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->stamp:J

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_d7

    .line 110
    :cond_167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_16b
    .catchall {:try_start_14e .. :try_end_16b} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_14e .. :try_end_16b} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_16b} :catch_f6

    if-eqz v3, :cond_d7

    .line 114
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_17f
    .catchall {:try_start_16d .. :try_end_17f} :catchall_147
    .catch Ljava/lang/ClassCastException; {:try_start_16d .. :try_end_17f} :catch_181
    .catch Landroid/net/ParseException; {:try_start_16d .. :try_end_17f} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17f} :catch_f6

    goto/16 :goto_d7

    .line 123
    :catch_181
    move-exception v10

    .line 125
    .local v10, ce:Ljava/lang/ClassCastException;
    :try_start_182
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->statusCode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catchall {:try_start_182 .. :try_end_195} :catchall_147
    .catch Landroid/net/ParseException; {:try_start_182 .. :try_end_195} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_195} :catch_f6

    goto/16 :goto_d7

    .line 150
    .end local v10           #ce:Ljava/lang/ClassCastException;
    .local v12, e:Landroid/net/ParseException;
    :catch_197
    move-exception v13

    .line 152
    .local v13, ex:Ljava/lang/ClassCastException;
    :try_start_198
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    const-string v5, "HTTP parse error"

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_198 .. :try_end_1a4} :catchall_147

    goto/16 :goto_9c

    .line 191
    .end local v13           #ex:Ljava/lang/ClassCastException;
    :catch_1a6
    move-exception v12

    .line 193
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a1

    .line 177
    :catch_1ac
    move-exception v13

    .line 179
    .restart local v13       #ex:Ljava/lang/ClassCastException;
    :try_start_1ad
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    const-string v5, "HTTP parse error"

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b9
    .catchall {:try_start_1ad .. :try_end_1b9} :catchall_147

    goto/16 :goto_125

    .line 191
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #ex:Ljava/lang/ClassCastException;
    :catch_1bb
    move-exception v12

    .line 193
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14d

    .line 200
    .end local v12           #e:Ljava/lang/Exception;
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    if-eqz v3, :cond_a1

    .line 204
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d8
    .catch Ljava/lang/ClassCastException; {:try_start_1c6 .. :try_end_1d8} :catch_1da

    goto/16 :goto_a1

    .line 216
    :catch_1da
    move-exception v13

    .line 218
    .restart local v13       #ex:Ljava/lang/ClassCastException;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    const-string v5, "HTTP parse error"

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 225
    .end local v13           #ex:Ljava/lang/ClassCastException;
    .end local v17           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    if-eqz v3, :cond_a1

    .line 229
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_201
    .catch Ljava/lang/ClassCastException; {:try_start_1ef .. :try_end_201} :catch_203

    goto/16 :goto_a1

    .line 241
    :catch_203
    move-exception v13

    .line 243
    .restart local v13       #ex:Ljava/lang/ClassCastException;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    const-string v5, "HTTP parse error"

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1
.end method
