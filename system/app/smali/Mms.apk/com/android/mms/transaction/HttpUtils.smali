.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 5
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 475
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .end local v0           #country:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .registers 8
    .parameter "context"

    .prologue
    .line 425
    const/4 v3, 0x0

    .line 430
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 434
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 435
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 440
    .local v2, soTimeout:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 441
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_44
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 445
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 454
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 457
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 459
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_1f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 463
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 6
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 414
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v0       #e:Ljava/io/IOException;
    :goto_36
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 419
    throw v0

    .line 416
    :cond_3a
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_36
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .registers 48
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p3, :cond_a

    .line 125
    new-instance v35, Ljava/lang/IllegalArgumentException;

    const-string v36, "URL must not be null."

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 127
    :cond_a
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v15, filter:Landroid/content/IntentFilter;
    const-string v35, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v26, Lcom/android/mms/transaction/ConnBroadcastReciever;

    invoke-direct/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;-><init>()V

    .line 131
    .local v26, rec:Lcom/android/mms/transaction/ConnBroadcastReciever;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v35

    if-eqz v35, :cond_e2

    .line 132
    const-string v35, "Mms:transaction"

    const-string v36, "httpConnection: params list"

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\ttoken\t\t= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\turl\t\t= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v36, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\tmethod\t\t= "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_161

    const-string v35, "POST"

    :goto_7b
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\tisProxySet\t= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\tproxyHost\t= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\tproxyPort\t= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_e2
    const/4 v10, 0x0

    .line 154
    .local v10, client:Landroid/net/http/AndroidHttpClient;
    :try_start_e3
    new-instance v16, Ljava/net/URI;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 155
    .local v16, hostUrl:Ljava/net/URI;
    new-instance v31, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPort()I

    move-result v36

    const-string v37, "http"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .local v31, target:Lorg/apache/http/HttpHost;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    .line 159
    const/16 v27, 0x0

    .line 160
    .local v27, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_4da

    .line 177
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unknown HTTP method: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ". Must be one of POST["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "] or GET["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_e3 .. :try_end_146} :catchall_4be
    .catch Ljava/net/URISyntaxException; {:try_start_e3 .. :try_end_146} :catch_35f
    .catch Ljava/lang/IllegalStateException; {:try_start_e3 .. :try_end_146} :catch_417
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_146} :catch_45b
    .catch Ljava/net/SocketException; {:try_start_e3 .. :try_end_146} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_146} :catch_49d

    .line 179
    const/4 v9, 0x0

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_15b

    if-eqz v26, :cond_15b

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_15b
    if-eqz v10, :cond_160

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 404
    .end local v16           #hostUrl:Ljava/net/URI;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    :cond_160
    :goto_160
    return-object v9

    .line 135
    .end local v10           #client:Landroid/net/http/AndroidHttpClient;
    :cond_161
    const/16 v35, 0x2

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_16d

    const-string v35, "GET"

    goto/16 :goto_7b

    :cond_16d
    const-string v35, "UNKNOWN"

    goto/16 :goto_7b

    .line 162
    .restart local v10       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v16       #hostUrl:Ljava/net/URI;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    :pswitch_171
    :try_start_171
    new-instance v13, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 164
    .local v13, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v35, "application/vnd.wap.mms-message"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 166
    new-instance v25, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 167
    .local v25, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 168
    move-object/from16 v27, v25

    .line 170
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/ConnBroadcastReciever;->setPost(Lorg/apache/http/client/methods/HttpPost;)V

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    .end local v13           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v25           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_1a1
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    .line 184
    .local v24, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_1b9

    .line 185
    new-instance v35, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v35

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 188
    :cond_1b9
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 191
    const-string v35, "Accept"

    const-string v36, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v33

    .line 195
    .local v33, xWapProfileTagName:Ljava/lang/String;
    const/16 v34, 0x0

    .line 200
    .local v34, xWapProfileUrl:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v34

    .line 204
    if-eqz v34, :cond_204

    .line 205
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v35

    if-eqz v35, :cond_1fb

    .line 206
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1fb
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_204
    if-eqz p6, :cond_26a

    .line 216
    invoke-static {}, Lcom/android/mms/MmsConfig;->getProxyAuth()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, ProxyAuth:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserNai()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "pcs"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, ProxyString:Ljava/lang/String;
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HttpUtils] ProxyString = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 220
    .local v6, ProxyStringB64:Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Basic "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, ProxyStringwithBasic:Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-interface {v0, v4, v7}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v4           #ProxyAuth:Ljava/lang/String;
    .end local v5           #ProxyString:Ljava/lang/String;
    .end local v6           #ProxyStringB64:Ljava/lang/String;
    .end local v7           #ProxyStringwithBasic:Ljava/lang/String;
    :cond_26a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, extraHttpParams:Ljava/lang/String;
    if-eqz v14, :cond_31d

    .line 233
    const-string v35, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v20

    .line 235
    .local v20, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v19

    .line 236
    .local v19, line1Key:Ljava/lang/String;
    const-string v35, "\\|"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 238
    .local v22, paramList:[Ljava/lang/String;
    move-object/from16 v8, v22

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_293
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_31d

    aget-object v23, v8, v17

    .line 239
    .local v23, paramPair:Ljava/lang/String;
    const-string v35, ":"

    const/16 v36, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 241
    .local v29, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_304

    .line 242
    const/16 v35, 0x0

    aget-object v35, v29, v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 243
    .local v21, name:Ljava/lang/String;
    const/16 v35, 0x1

    aget-object v35, v29, v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 245
    .local v32, value:Ljava/lang/String;
    if-eqz v19, :cond_2ef

    .line 246
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAuthMdn()Z

    move-result v35

    if-eqz v35, :cond_312

    .line 247
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 252
    :cond_2ef
    :goto_2ef
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_304

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_304

    .line 253
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v21           #name:Ljava/lang/String;
    .end local v32           #value:Ljava/lang/String;
    :cond_304
    add-int/lit8 v17, v17, 0x1

    goto :goto_293

    .line 174
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v19           #line1Key:Ljava/lang/String;
    .end local v20           #line1Number:Ljava/lang/String;
    .end local v22           #paramList:[Ljava/lang/String;
    .end local v23           #paramPair:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v29           #splitPair:[Ljava/lang/String;
    .end local v33           #xWapProfileTagName:Ljava/lang/String;
    .end local v34           #xWapProfileUrl:Ljava/lang/String;
    :pswitch_307
    new-instance v27, Lorg/apache/http/client/methods/HttpGet;

    .end local v27           #req:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_1a1

    .line 249
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    .restart local v19       #line1Key:Ljava/lang/String;
    .restart local v20       #line1Number:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    .restart local v22       #paramList:[Ljava/lang/String;
    .restart local v23       #paramPair:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v29       #splitPair:[Ljava/lang/String;
    .restart local v32       #value:Ljava/lang/String;
    .restart local v33       #xWapProfileTagName:Ljava/lang/String;
    .restart local v34       #xWapProfileUrl:Ljava/lang/String;
    :cond_312
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    goto :goto_2ef

    .line 258
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v19           #line1Key:Ljava/lang/String;
    .end local v20           #line1Number:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #paramList:[Ljava/lang/String;
    .end local v23           #paramPair:Ljava/lang/String;
    .end local v29           #splitPair:[Ljava/lang/String;
    .end local v32           #value:Ljava/lang/String;
    :cond_31d
    const-string v35, "Accept-Language"

    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 261
    .local v28, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    .line 262
    .local v30, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v35

    const/16 v36, 0xc8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_381

    .line 263
    new-instance v35, Ljava/io/IOException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "HTTP error: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35
    :try_end_35f
    .catchall {:try_start_171 .. :try_end_35f} :catchall_4be
    .catch Ljava/net/URISyntaxException; {:try_start_171 .. :try_end_35f} :catch_35f
    .catch Ljava/lang/IllegalStateException; {:try_start_171 .. :try_end_35f} :catch_417
    .catch Ljava/lang/IllegalArgumentException; {:try_start_171 .. :try_end_35f} :catch_45b
    .catch Ljava/net/SocketException; {:try_start_171 .. :try_end_35f} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_35f} :catch_49d

    .line 383
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v16           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v33           #xWapProfileTagName:Ljava/lang/String;
    .end local v34           #xWapProfileUrl:Ljava/lang/String;
    :catch_35f
    move-exception v12

    .line 384
    .local v12, e:Ljava/net/URISyntaxException;
    :try_start_360
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_365
    .catchall {:try_start_360 .. :try_end_365} :catchall_4be

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_379

    if-eqz v26, :cond_379

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_379
    if-eqz v10, :cond_37e

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 404
    .end local v12           #e:Ljava/net/URISyntaxException;
    :cond_37e
    :goto_37e
    const/4 v9, 0x0

    goto/16 :goto_160

    .line 265
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v16       #hostUrl:Ljava/net/URI;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #status:Lorg/apache/http/StatusLine;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v33       #xWapProfileTagName:Ljava/lang/String;
    .restart local v34       #xWapProfileUrl:Ljava/lang/String;
    :cond_381
    :try_start_381
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v35

    if-eqz v35, :cond_3a3

    .line 266
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[HttpUtils] http response "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_3a3
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3a6
    .catchall {:try_start_381 .. :try_end_3a6} :catchall_4be
    .catch Ljava/net/URISyntaxException; {:try_start_381 .. :try_end_3a6} :catch_35f
    .catch Ljava/lang/IllegalStateException; {:try_start_381 .. :try_end_3a6} :catch_417
    .catch Ljava/lang/IllegalArgumentException; {:try_start_381 .. :try_end_3a6} :catch_45b
    .catch Ljava/net/SocketException; {:try_start_381 .. :try_end_3a6} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_3a6} :catch_49d

    move-result-object v13

    .line 271
    .local v13, entity:Lorg/apache/http/HttpEntity;
    const/4 v9, 0x0

    .line 272
    .local v9, body:[B
    if-eqz v13, :cond_3d7

    .line 289
    :try_start_3aa
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    cmp-long v35, v35, v37

    if-lez v35, :cond_3d2

    .line 290
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v9, v0, [B

    .line 291
    new-instance v11, Ljava/io/DataInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3cc
    .catchall {:try_start_3aa .. :try_end_3cc} :catchall_410

    .line 293
    .local v11, dis:Ljava/io/DataInputStream;
    :try_start_3cc
    invoke-virtual {v11, v9}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3cf
    .catchall {:try_start_3cc .. :try_end_3cf} :catchall_438

    .line 296
    :try_start_3cf
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_3d2
    .catchall {:try_start_3cf .. :try_end_3d2} :catchall_410
    .catch Ljava/io/IOException; {:try_start_3cf .. :try_end_3d2} :catch_3f2

    .line 377
    .end local v11           #dis:Ljava/io/DataInputStream;
    :cond_3d2
    :goto_3d2
    if-eqz v13, :cond_3d7

    .line 378
    :try_start_3d4
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3d7
    .catchall {:try_start_3d4 .. :try_end_3d7} :catchall_4be
    .catch Ljava/net/URISyntaxException; {:try_start_3d4 .. :try_end_3d7} :catch_35f
    .catch Ljava/lang/IllegalStateException; {:try_start_3d4 .. :try_end_3d7} :catch_417
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d4 .. :try_end_3d7} :catch_45b
    .catch Ljava/net/SocketException; {:try_start_3d4 .. :try_end_3d7} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_3d4 .. :try_end_3d7} :catch_49d

    .line 395
    :cond_3d7
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_3eb

    if-eqz v26, :cond_3eb

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_3eb
    if-eqz v10, :cond_160

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_160

    .line 297
    .restart local v11       #dis:Ljava/io/DataInputStream;
    :catch_3f2
    move-exception v12

    .line 298
    .local v12, e:Ljava/io/IOException;
    :try_start_3f3
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Error closing input stream: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40f
    .catchall {:try_start_3f3 .. :try_end_40f} :catchall_410

    goto :goto_3d2

    .line 377
    .end local v11           #dis:Ljava/io/DataInputStream;
    .end local v12           #e:Ljava/io/IOException;
    :catchall_410
    move-exception v35

    if-eqz v13, :cond_416

    .line 378
    :try_start_413
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_416
    throw v35
    :try_end_417
    .catchall {:try_start_413 .. :try_end_417} :catchall_4be
    .catch Ljava/net/URISyntaxException; {:try_start_413 .. :try_end_417} :catch_35f
    .catch Ljava/lang/IllegalStateException; {:try_start_413 .. :try_end_417} :catch_417
    .catch Ljava/lang/IllegalArgumentException; {:try_start_413 .. :try_end_417} :catch_45b
    .catch Ljava/net/SocketException; {:try_start_413 .. :try_end_417} :catch_47c
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_417} :catch_49d

    .line 385
    .end local v9           #body:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v16           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v33           #xWapProfileTagName:Ljava/lang/String;
    .end local v34           #xWapProfileUrl:Ljava/lang/String;
    :catch_417
    move-exception v12

    .line 386
    .local v12, e:Ljava/lang/IllegalStateException;
    :try_start_418
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_41d
    .catchall {:try_start_418 .. :try_end_41d} :catchall_4be

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_431

    if-eqz v26, :cond_431

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_431
    if-eqz v10, :cond_37e

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_37e

    .line 295
    .end local v12           #e:Ljava/lang/IllegalStateException;
    .restart local v9       #body:[B
    .restart local v11       #dis:Ljava/io/DataInputStream;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v16       #hostUrl:Ljava/net/URI;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #status:Lorg/apache/http/StatusLine;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    .restart local v33       #xWapProfileTagName:Ljava/lang/String;
    .restart local v34       #xWapProfileUrl:Ljava/lang/String;
    :catchall_438
    move-exception v35

    .line 296
    :try_start_439
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_43c
    .catchall {:try_start_439 .. :try_end_43c} :catchall_410
    .catch Ljava/io/IOException; {:try_start_439 .. :try_end_43c} :catch_43d

    .line 299
    :goto_43c
    :try_start_43c
    throw v35

    .line 297
    :catch_43d
    move-exception v12

    .line 298
    .local v12, e:Ljava/io/IOException;
    const-string v36, "Mms:transaction"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error closing input stream: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45a
    .catchall {:try_start_43c .. :try_end_45a} :catchall_410

    goto :goto_43c

    .line 387
    .end local v9           #body:[B
    .end local v11           #dis:Ljava/io/DataInputStream;
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v16           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #status:Lorg/apache/http/StatusLine;
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .end local v33           #xWapProfileTagName:Ljava/lang/String;
    .end local v34           #xWapProfileUrl:Ljava/lang/String;
    :catch_45b
    move-exception v12

    .line 388
    .local v12, e:Ljava/lang/IllegalArgumentException;
    :try_start_45c
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_461
    .catchall {:try_start_45c .. :try_end_461} :catchall_4be

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_475

    if-eqz v26, :cond_475

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_475
    if-eqz v10, :cond_37e

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_37e

    .line 389
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_47c
    move-exception v12

    .line 390
    .local v12, e:Ljava/net/SocketException;
    :try_start_47d
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_482
    .catchall {:try_start_47d .. :try_end_482} :catchall_4be

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_496

    if-eqz v26, :cond_496

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_496
    if-eqz v10, :cond_37e

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_37e

    .line 391
    .end local v12           #e:Ljava/net/SocketException;
    :catch_49d
    move-exception v12

    .line 392
    .local v12, e:Ljava/lang/Exception;
    :try_start_49e
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4a3
    .catchall {:try_start_49e .. :try_end_4a3} :catchall_4be

    .line 395
    const/16 v35, 0x1

    move/from16 v0, p5

    move/from16 v1, v35

    if-ne v0, v1, :cond_4b7

    if-eqz v26, :cond_4b7

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_4b7
    if-eqz v10, :cond_37e

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_37e

    .line 395
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_4be
    move-exception v35

    const/16 v36, 0x1

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_4d3

    if-eqz v26, :cond_4d3

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/ConnBroadcastReciever;->reset()V

    .line 400
    :cond_4d3
    if-eqz v10, :cond_4d8

    .line 401
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_4d8
    throw v35

    .line 160
    nop

    :pswitch_data_4da
    .packed-switch 0x1
        :pswitch_171
        :pswitch_307
    .end packed-switch
.end method
